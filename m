Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1A234E743
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771602894; cv=none; b=kQCvBAX1tMqAzC/b6c3BI404L6tx/Nv+49xcTj7uigUPzGOwN40n+odF6jI+LQJZ2aYs5ZnYO+Qw0L4pPEkqBRijHLgRLhSB6QD+Z5AG55ybVLqSh8URBAdLwmMraVah1udXzrmlLZ8HJZPkjjZa4nLmjVOfruidTotfzs9f3/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771602894; c=relaxed/simple;
	bh=SiWtgHL8WrArjhbrjLEtJE3VGD/cO25SlOKnOdBvlJE=;
	h=To:Subject:From:Message-Id:Date; b=rOVEYwWj/iP5vHvrnF95E6QxHL7Zq5FLlShwVCv+O54kwfTmVOkW2KokQdewn9niJbp5j5W47cRQ1CF7uQDJfi6qeIIZNGVJdxCzkDOZqcSPiWARCx90VAqr8uXHww0xbFJtgp616Frn4rKP2+URahmylRM2ftLYtB+jZm0kht8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FWIqHMmZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FWIqHMmZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A21C19421
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771602893;
	bh=SiWtgHL8WrArjhbrjLEtJE3VGD/cO25SlOKnOdBvlJE=;
	h=To:Subject:From:Date:From;
	b=FWIqHMmZrc8nqk2RxopPIlZMaUFxcaiZ+FZdaiNbV3TRqR0inanHN4pnF70d/hvZl
	 RpWHGl5DHUvljyxRagWLdHMF2usproocuIYrtAaHWFg8X4pMT1JL1Ahsx2GxwbKymV
	 uu9h/xS0XTAKFwEijeOLf7SIuzwDl2Hj0s1R83rFwkUnqSMXOKW43m5/JXK2yq8DKR
	 wIzoVUAJiLeZjBh2kzO/rXY5FxIbyI2mdfEJDOCuvx3byXZ4kvlWPRFN+WxSvuLHAv
	 bEqSSvDkzhQ3nbGkyYBM0FWZZnH3reWS3huDVPq7VxIBx7NjLntZsJE1IUZAZB+794
	 NGSVEjkHP1QtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A400FC5AC9F
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177160289365.4179.10439915620204723550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 730df8966403f5c88d08ef30cabcc60be1a0964b2d787d88abb3832874e62646
Date: Fri, 20 Feb 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771602893
