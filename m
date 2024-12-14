Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5269E15666D
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734173754; cv=none; b=dpyL+Kl+a0vghB1i6zYJBF2bYL7ACzgMMspw9dy4sbxpc18/EJo6izpjUPjgjZleXVtHAHim7dCcyjkaGQQVliQqpGQ5jPit2PJ0TotirkGn1jqDeESLd1AeGuh3aaBSEwKWGcstWr3VDAGPK+QP9p1Qeriy0U+GP5/MVBHVCVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734173754; c=relaxed/simple;
	bh=Z0yX4XqhkxSnjz0wLk0phgKtgrZlH7nSX1tb3wDS1TM=;
	h=To:Subject:From:Message-Id:Date; b=YBrfQr6scMhf5TMzV8zlZwcmzFIsU4oOd8Bz2+LE8W4nS0d3NghDF/Q6z1yGBBEJmnNp9kkeVfPNZyLmKnY24FDXor7rZ0RVQQgla1nNsjh+rpHpXQ03RPChTMtx35QBbFbtni9eincyJK5x6lbQ2riTYB+BaMyqsY1XU5jv6x4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dR2T2V0a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dR2T2V0a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B4AC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734173753;
	bh=Z0yX4XqhkxSnjz0wLk0phgKtgrZlH7nSX1tb3wDS1TM=;
	h=To:Subject:From:Date:From;
	b=dR2T2V0aF8aplvL17fvlM2H5GGfBRm/odt87Ki4x9PB7LbLbV2B7rLDp2v1AJy4Ts
	 22pG9Bgq8AldG3MRzGpuUOp/epSAOo19UgBBIUqv8a4PouVeaEMXzRYR4ByfrXHAJ8
	 6WgTbiszyUDI1I3D1Wh/MgpqJ2VYwo/fGrTBzFXUbf19OCzQ4/FgYfRbgpp6mD6NCN
	 cor8yisNBgKC38afRxER6P5g1AARCgR1TgUzN7wno22FemSR+gWpuC7r3LATDtpLOF
	 8XJwZiZqMZ0Eekiz/Gbk1vTFkSu5vbAv6HE/lB3zY5lwOMTvDmLaa4YhFLdITYoEOA
	 NrqWl4nHdGLgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CC1E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173417375361.6527.10312468402049486784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b42562392d59a5b431178a472c00cc393d3324695cecd2951e7e199f20614365
Date: Sat, 14 Dec 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734173753
