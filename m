Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337C028A3F3
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747298995; cv=none; b=f4ON/OB8Cmhc43xE7pd4KncKq/LDDv+yPNM3CFAKxMI9Nbr5bV/Wp8y9GZ3Mqm1JUh2D7/xMQhZv/sBZEUodcTPSjjODbvyJVllGpnK0qMPXbYikU+td6GED87bC4W9XSUoBJlRbBbhlYdbkBPsFwGc9Pf3oCMw7RLUN8vQk/ZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747298995; c=relaxed/simple;
	bh=cn0+HrQMbgGA1BiQlF7xKYblQMhfuDGa0kfeVQ+bD4U=;
	h=To:Subject:From:Message-Id:Date; b=ClExWKpkruhV9U7zAz6Ccpc0JI0BSR4+wxJJg/KHkoJCFyX+YipDmYgWZaNscAvNp79Jl2bGl9Orb7VNHaiMAm/V0uDqw/Y6mV03M2UAbwG6W3lJPinWyVn+Mk6bV9zS6jKhCpRLka2vek6x3ZkccV4HNTRbyKKfW9g2KolONlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MemayCov; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MemayCov"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83D0C4CEE9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747298993;
	bh=cn0+HrQMbgGA1BiQlF7xKYblQMhfuDGa0kfeVQ+bD4U=;
	h=To:Subject:From:Date:From;
	b=MemayCovXKjIgX8U5ti26w/2rLDviOVjFJOF7E6HE2UYRUS1my4AkWFq+k9EpEJ8Z
	 K+f8rG0WNHLhakdyAmC7+wEBHq5qvokDIrA/d5QrdCyx1MWxjM/PA1wrYQrZ0uG443
	 DEtPQRJSe5mVUNaKC9eshklOCLVzXBh5xUxLlx60NJplQJBiLDNUO5bdpsJeXO9B2k
	 s3k9IFmihTVfWiWdPUSxMaAdFmu9eiI8MBurq+90XC7M7YfBEq66t6eAbBvsmC5aJj
	 70q1evtEFN/HcwogPD1FEzhsn3pQ/bGVYQfOO8m2oIWOZGiCMs0g+hySUP03FZMXBV
	 DkZUbSdZ6ZBJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980E0C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174729899361.27155.9994531601249039102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7762dfe180be027b9d2038c286d7f635e96f151b269069174046535638221a9
Date: Thu, 15 May 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747298993
