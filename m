Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2AC2E401
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786170034; cv=none; b=HGAAVVlSyMwRhHT+8rRoeF+T7q/ecvI+kvH4dOjwpBlHoUDDgkpcaZ/TuoSQ4ySB1pMeX0Rsr7pPsow5ptmFuZ683ZFXCB1r7iCiDpXCetgvQwz91JQqWeCcOh7Xj5Bv64G1VmsBAAR4Osnz2YRPpJ86A8VLhWLm1E0qk9BQtrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786170034; c=relaxed/simple;
	bh=Szh3L8U6lxrLmrhhyUjwvkp1zzDwGhtn//hBm/owt0c=;
	h=To:Subject:From:Message-Id:Date; b=rwetUyju8Mlp8XNwPgomimzDcaZHhmR4uWrF/SXLHVDZ8nMG0Nbq6p6dYCwYhUgHuVA9N24vTayXFNRCEqOuVv6HSrVpW4qRvQBlGpeIBDhFF4pOtLwwWSzHaS7dqya8cwbf8Bgki7ujEowtl3ctmc3ohXN28nKFX6lh8z7w/y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IfeBHNFV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IfeBHNFV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF334C2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786170033;
	bh=Szh3L8U6lxrLmrhhyUjwvkp1zzDwGhtn//hBm/owt0c=;
	h=To:Subject:From:Date:From;
	b=IfeBHNFV7newCskFsmZX+OfAxlKfJhc4vCy4UDR2p8Kazto2L36Jn40M8NxqDlub6
	 dykHRw/+J2LJlQu6II855OkTZCnudB3QXcq3Yati1HUy8N6yQgirmsdsJniEG4XhY+
	 O7rq31qxgYEiobPMEBQ+vq6LTyrRAoIsKyhACYJ1TggrD2F3l7qN5bhYXBmXtLpU00
	 Fjj+0zaiTlAV1REVBQF/R98/N3BYeaPWW6itusi58HZGf2+4uAyF4GtevhQ/RiKGL5
	 z+RuQs9nudUl1qgQYEwUxp52mUQRloxDsWm4xOmCjbVtH1V7mcPsjLEZd4Rt7v6q7x
	 EwJVgUSFJuzig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9FC6C55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178617003372.31741.7910980291034216220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fff5d56d5371d09354a5917037173f877b61c898d31becb16301925f7ec07612
Date: Sat, 08 Aug 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786170033
