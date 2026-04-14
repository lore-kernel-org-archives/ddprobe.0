Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5F3727470
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 14:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776177454; cv=none; b=e18xtcEpgwafw6Ibo1y61vQYPtEBC4Fys1b1Ae/kMTp+YSX2Mjt5GQaQMCfZVsGrdwvfNjXbHOzQ69T4P9mDuwa6BdoVkBoMNutCq1TAJrjJit1Tqc63UYjguLSbTvfCeYou5JJF2nHl/pl3sgY+6ja4EzHEmjSuuBiMjNW9Qzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776177454; c=relaxed/simple;
	bh=krA5GawLtGUfmVjl5gXINm1K4H2nUUH4IQhuLUD2Ir4=;
	h=To:Subject:From:Message-Id:Date; b=H3eQU2N7qqZRRX1jhACR00tEFO8MOYCGLHbpUwVClJYhzQ+Im5rsnas51ERntNQwWw2/AWg4GDXpCBwjM+gxPdGTg2S/cQR/2t0EwWgnihJ2ZrLQzdhiKdKcycUeZJc8nfgpaRAJKh0D3THMuRXIwiQHt0ypV15kjYmBePn8MdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kVTU1YJ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kVTU1YJ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68CC9C2BCB5
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 14:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776177454;
	bh=krA5GawLtGUfmVjl5gXINm1K4H2nUUH4IQhuLUD2Ir4=;
	h=To:Subject:From:Date:From;
	b=kVTU1YJ3y5uwV/g4zN1Of9J3hUn4lAlj+3og48IJfu4fiWBaRSlSDOTMCsZXp06m5
	 XE/o2Ydn2rmW4WHW6XrkJWUYDWYJ6S2Wc1ronSRvxQFrPdLdOV1QjUK7F8psMO7+wz
	 UBKVBmPvr+D9fA/gldLUbLOfQr+xLpXd/1vaowUNc9p3CL10gstC+WJywhJjJ4ixUT
	 5hahahKkp7CMEAelBMrSIoxOBUOVC82eCcBFRMQwgB11OKQMG6SXcf2H6UE0diDgLH
	 QUlQAsqMRgk4dIqqQMtwwYbFh/PlMtgjQVrcyUEZFot2c6Ndzfsbc0AlqCqaZpWUx7
	 daN/berEnwM4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBDAAF9D0D5
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 14:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177617745375.15079.16324860286274910640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4e95ef86b1a20930d860bba3a6d5d27341ae8db742d778b08af8f76b5d5b501
Date: Tue, 14 Apr 2026 14:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776177453
