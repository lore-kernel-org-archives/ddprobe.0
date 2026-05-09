Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B84D35AC2F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 13:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778333854; cv=none; b=VZpfi4scGCVcq1Mmk4AkV7I/B+p0/oOiAqEqAR/IU6MvuvkCkgMU1FHi0gRw0UpQlKQiNGTf3tniUNPsib0kQoQvydeja2N69b7JOB9hG67Cjp/dezA8d4LxkmsXxMPT6Q9q9u36pYwTs6ALQdL4gLbkQg20UiruabggF88fHag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778333854; c=relaxed/simple;
	bh=WO3NgDqExAywgKPnav1J/Q8Aq5Tfy2iDzlptQDOHrOw=;
	h=To:Subject:From:Message-Id:Date; b=P+i6qdQK6cZlo3RfZekhROd+YktrlROBSXL9rJQQaqTeaVQmDnsG7GedUeHEDaCZMCbO/9RFPm5iBBZLxkk+Fq79p7vVqklQbzcSMXDYL4LoCKtZl6WeFiFfLLNLZ6KMyXH+sBhujEBsNFCW9vGp4VCFs8yJdtGHar/mGSdjXQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YOPfJAxf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YOPfJAxf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1B89EC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 13:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778333854;
	bh=WO3NgDqExAywgKPnav1J/Q8Aq5Tfy2iDzlptQDOHrOw=;
	h=To:Subject:From:Date:From;
	b=YOPfJAxfsdY8ocwMfHMtEaUDbFeLKFgx5y7Zkc6jhh8yoP9jlcd0ZRBEtj4HUFLLX
	 Cj8I0kKXsSX/xVVDmLI3EyDA0Na97r1U3cEflCFjgtISxATaZLiQvO/zUPsp3/q2zt
	 5rKdqKxvcSASuxR2LAZYivRL18R1bXiFmzXr+fNa5MvfAe1Xwoeccf85MzyrOeaKpW
	 rA4Cl+MKq2NMTmzY4qC0+we7xzmTrua3mFQ8vUnTtNvd9ZwPazZUPeDkeVK8osRNBx
	 MVwuggwyuYzA7WG3f1jNuJOJoeRcNODn06ZvUL8WEiQyELFyfHunZ/WwdFboyOikf5
	 OgPGm+bTTAfyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCADECD343F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 13:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177833385376.27155.1101902688275915650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eab5e709103c09a68ce6ad9d015820a461c1d40d20eee85ea1e2828569d96126
Date: Sat, 09 May 2026 13:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778333853
