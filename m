Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59A85247280
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785060034; cv=none; b=IKM00CQB8f8P2sIcPZ8dRi5kBL4I/GnAAShOLHaP0li6doLSwaCocUh48i0QUpQMz2Md+T41svyB48u0TV2FJJB3S2hox8367c+CHoVT3HQyFRxPFKh9a3H0V7bXcUSZo9jcwNMpecKKnuihTBC2pTkugprWA4m2YotXc+4PCEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785060034; c=relaxed/simple;
	bh=bULVGCnzFSFBtI9m7x0DBx4SqjvtdKcW/Iqpvh99A38=;
	h=To:Subject:From:Message-Id:Date; b=hCwAB3NLH2m4HmXYpmytnGRGP3wiOoSZ/v0mz20nVDWsOPiYQFxVgKDilaJf68l5hypB3vnxgC6iCSvMmSCUHcp4kFFNgqZfLBwx7P1vlYCvBrowO4rEf09MfOL9QA1ZnAmJqArvadklOxYuy1gSGSRogxG8cv77l406Ue1qfwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f0GYwyvG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f0GYwyvG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36EDC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785060033;
	bh=bULVGCnzFSFBtI9m7x0DBx4SqjvtdKcW/Iqpvh99A38=;
	h=To:Subject:From:Date:From;
	b=f0GYwyvGzXR7iUFudCBOl7UvYweoQf/gCo2MU7gp+4UOrrrsniPgiqijvaUgWo3cY
	 V+m8RNSLlHrPX4epaCWw5ULN8y4UODrGhmUC3X/zNBITIAPAKa3IwdMXaK42LjzRBK
	 W+CO8Gu79at35zBQgc2HQYCT2CskC5oqYKkhK+GEge7jGYNahTrKlliaAvmLYQ3noh
	 o95gb7R3G2PeS4Hx8Uik4zEfVT8welumoM+0k7ZR6kX+Hun/YjIrPgXQD33u09G+4Y
	 bdDUP4SX4Rd4OrrYUSU/X0zsY5C01I3jQHOSFSdKgNoxlpd3Jd6tElwrOd9XaIQxBd
	 tLlBcbI+OKLCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB592C531F9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178506003368.16380.9086213905932044175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adac55d4b85d6aaa5459d0669e37947e69e388f3747332fddb42ef028364194e
Date: Sun, 26 Jul 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785060033
