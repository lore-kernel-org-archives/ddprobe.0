Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341AE18859B
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 03:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778382634; cv=none; b=cwb4QpYhCWCpQ7T1gUsdo2eiWc/OXBgHVE6xxkhqmm64nG7wyV4AH30uZ5rslIe0+okLgqvUNwl0YfUh1zvGS16SN2WyIiVoGE39o/0wwOQXkhQ5qFB/la7No9Fu5HE+eHku+qHIrOAM7tVnY7FU/RC8NkzSoEqUoVT8mQVlA1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778382634; c=relaxed/simple;
	bh=BsSmFz8sXTD7PwzBdITBK0p9+z2XxUm9WJRqboNpcxs=;
	h=To:Subject:From:Message-Id:Date; b=GUw30JREVkKrEAu0kqTlEWnM4DBsaUrlEv33MfeCGlXd16XNqDEbY2HoWhOSq9vLzc1d4df0nky/6c7cd3WrtHX9L6wzpEGu29JNDKFzwlWV/oFsPuVPaJ2NvJEcllVdbgo2uo5HoZ90rPlpLujsASV/yWRnKhlqnIChVh0/xc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQB5Po5v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cQB5Po5v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C08DCC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778382633;
	bh=BsSmFz8sXTD7PwzBdITBK0p9+z2XxUm9WJRqboNpcxs=;
	h=To:Subject:From:Date:From;
	b=cQB5Po5vkjNrdggut1ha5HPV4C9Sg8nB8NWJFbW3tce3xZzRIRQSqrMIc4wwzGCVO
	 2vzCdgZpPhuZvoVfIDQD4cqozNScWrv5R9SSV5eAmkwZU8Wj5iBRpT5mb3KsRb0gU6
	 E7FBMYXIpzEYhAjZHtTVnFkPZPIwwa3mJxVVHUFOpzQpJYwKeH7kAMKtZSaoHhAhK7
	 aalbPc9wJpFOEvDnzSAweKHIYLpFz5DsgZQMRcaaXMzYDU7EDmu70nB5j2AXtXWL0F
	 sr/sMw1TTUHVZrtn15IXqzs1xwn2s1L0JTOdDgjLf+B03iHGvreWd3Gx8y8O4J37zE
	 i7nkQe0Fe+7CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC328CD37AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177838263368.22205.12897862300420656359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bcad9cd684abe6bc362c75ad34d9669f01d6962af53bcd691a123b2debffe29
Date: Sun, 10 May 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778382633
