Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7AA410D34
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 13:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779889954; cv=none; b=MYqxCWSsep3y2C09e32tF0pI8xihUGQwC2Wb58DVvlYvfZbYBiXMGV6HrihXy783ZlmfFWayaNBheN0Ti83WJNeV5rJKDR/GIs67wkCXFAYnkrTv7YIPTo7XM67dmNYm0b+6QvJdIDh/V3E03D2yD+l/dHokHZBd5Gv3FMrLkZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779889954; c=relaxed/simple;
	bh=G/iaSeJvFaclsjkl7XQcWbBNBmIxL1p4WGyVozwHBb0=;
	h=To:Subject:From:Message-Id:Date; b=VhufPWOk/mbbHtKLNDzHFPLl9Dgb5J+MrN5bzo5da82XM9mSjEVNEfNEEK6OFouqtVIWMgGZJFxj66Iugb0djuZjCTdvUCIQ5rKW6KwLrLwRuzvV4q7UHTvc/VC92XUi3dYC5wxXSA5DE7vWoQR0w0RgIarQujDD3sP0CEQ0P/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JlC3DDCs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JlC3DDCs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E60C19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 13:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779889953;
	bh=G/iaSeJvFaclsjkl7XQcWbBNBmIxL1p4WGyVozwHBb0=;
	h=To:Subject:From:Date:From;
	b=JlC3DDCs3GpPxoXhoRZKnvxgIFEHJWAq9TxxnGV2OoHwFETlOGNCKsPerCoZB+RWi
	 RuGlQAZ+0rnsv0o955JGFG+P5dmfZEqc6jyXRgra8GmTRTa7axjqOJbEMOXMW+Y7jK
	 cqvZwg3Nj7d2RYjoPwFqFHSupmluK9rAeflDFAqm4SxmFN4EcFEnvA5D96tV/rj4Wl
	 cdhEezx8swz715AVTS65oiKiwtnTQqHjf/qwqx48bWLEyI3RRV9BJW6FGMxt9MxyGF
	 +Kn58eWEClWokjhcQdxBY5fzYtxWnX2kWCiLwsi1gJy5iZIuBDXY5XbnW5FM6ePEtS
	 gTZ9VimiBWDfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8783CD5BD0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 13:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177988995368.27949.7601236968540636366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 754144fb590f3d36a187ff8be27942d4fed03168eabe14e9384e16545af970c1
Date: Wed, 27 May 2026 13:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779889953
