Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09004253B58
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772283894; cv=none; b=JoPV95/BmG1l54ZY6jPJ8dR6dpvlDy1bzaKVlLYVEtOOhvcTRdmD8cO2t8GcnnKbJoaDKQ8i0nfgpHB7AuSPy/rFOz5VMmPJ+en2O4tPustd9l/Q9630C+m6Dnk1IXGyN4gW0PmJ3ksycoUcYRLPZ81plw9sP0tGEGmN390Bd0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772283894; c=relaxed/simple;
	bh=Uqtp+KCVuJkMKZyMh43L2zsGNLMVR6SZTgDWJ9wcdlE=;
	h=To:Subject:From:Message-Id:Date; b=NrJXzJYFRl3e4vv4ZP02pYQZfNDCgPaQa3XSHxr55kfgZzCphgPgsaYbmHQPFOWxe7068iEO/Yj3MxODxK2FsaAFcAL9Cy38RyU2SeNod9f0U5Z3uXLuItcUorrQEtREclzTTqZPiA0cF7X7pV3uorWumtO6csyjQsDbq+Mg8cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eNjayKK1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eNjayKK1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91FCC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772283893;
	bh=Uqtp+KCVuJkMKZyMh43L2zsGNLMVR6SZTgDWJ9wcdlE=;
	h=To:Subject:From:Date:From;
	b=eNjayKK1aDw3Owf2uRWFFWiD51UAbo3fGAhsqNLE3iEDNTfaYtGxY0i1bsKywRZci
	 5p5ML/291wTAKS4EQ4Rrw0m3Kuux+fsfuzCa+gLC8L2iyrRyNHW9tcvLsDrGb1Xfi2
	 P0w2ZtTYdm+W2eEtoxMPiD3i9r86/D3B1zPK2LNwo7Sv2qYHacT2rUeGMt6irRqQvr
	 31UMgdkK3iZwJRBR6gkzyQwuMfrbFqYqWCpu4oVWstLEjVjjoSz8T4j6jf89zyy2+I
	 xCr5iTb808F8trk3E2t+IB7imR7IlFS9U2Pq7n4aLBFnxKqzZeh86wYdlm3ruPXVVG
	 eFmDRoLSU1uog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96831FEE4C9
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177228389358.7808.2221498031372582633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da9625def21149eea589882271a1683449d2f9610436981c40643cf1b5856725
Date: Sat, 28 Feb 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772283893
