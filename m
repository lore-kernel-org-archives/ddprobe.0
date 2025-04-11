Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA5C1F151D
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744347595; cv=none; b=FA8m/d9olTYRavSoJGd9longRPrMx2rIU/HT+HnEClpqgQwbrqJ3gmkyd0ksRvAhqbd4HGAA/JMiHILS3x+kvOnyPPOt+7n3jcBezm+qeQgEmW7oxN8aVncB210AgG+T8jbL7/6ddDLie5bkM0/O7EXaCa1LiLXYWW8xSBbt+wQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744347595; c=relaxed/simple;
	bh=FufolgUxQgygEOCNT9t1XxqbmCzk2RCHjwSa2KZjLYs=;
	h=To:Subject:From:Message-Id:Date; b=oXcJG8SU2RwiGF6T74fLKQUc7NWp40FCHR0Mv3XULdC3YkdIfMFxTxzLOU79CTfIj5pnNR/4PSgTLfCZye309Eg12BiKPCAmcq1lWkTaI2emBw/4hXW9izUDG/Nz63zx/T64jMW8YLUK1ZuPmCTNlsDz/R8HlPUbeHjdGP/ph2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N5ZGSmpf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N5ZGSmpf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC275C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744347593;
	bh=FufolgUxQgygEOCNT9t1XxqbmCzk2RCHjwSa2KZjLYs=;
	h=To:Subject:From:Date:From;
	b=N5ZGSmpfyxpGMWhcxH3jL1wLMVCWr6rRhKHxYMj3CQVDt0+yvt2dt8EdfbdeNKE+T
	 05+U2qpbAY3TDRlquvA/4RAI8mZBjECkosmsN8Gy4CxKLWVZPL4O4efs3j/FE30fKB
	 YxVbb6m9VgNKI2SSJyRO8EB56PD/PPvCx8FgSnaWdCwFn0OlkjAl17sY8dNnSeYkN4
	 /S8x5/M0/YE13MwkvR2K42PlmrqZx5gLzRH3nXRRv6zpx9q7L4ASUj6CBTlhBqc2R/
	 296rbzf1I4qjuMYNheBF1z+UzJqIPUSPAhPRpFMpjJE0fCwrJljl0X+AR/6U737sxM
	 6vuoIxbgUwB8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9554BC36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174434759358.18848.11674671915420868796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d636e1ddc97149f1d2caadcd8a98c038b395c208150e318418b2c64a86230ec
Date: Fri, 11 Apr 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744347593
