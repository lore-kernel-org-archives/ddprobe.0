Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A5B1A285
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766364834; cv=none; b=DVCCW7OLGRqAUoZcUsPEZdfJc6axskb9059/EpOv6qAfnECsVI6rWf9QdbuAsnEoOXzDAyOqr9U2zM38tEYvf98ytGcdjSzZ8H/KF+BsmXES4/tAPlCcRiA2wzi5Kgmj+bLrpX/Pge8iKvBL2G476xCvDFAp1m/yPRe1fkHt468=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766364834; c=relaxed/simple;
	bh=rd0qFe7ogEFq5FxZ15ZJgTVhctynXbXNkHaTTns3BqE=;
	h=To:Subject:From:Message-Id:Date; b=P2NHXUQm60Bu6oBNvZjxHXGn5BhJKxMWXnDdknNJkLisedJidvF8fD6U5zTnzOEpHhwkaYtI+7MBSx4jW/XioWc7dZAiv18SXPND6YAL42wXS1x+qRhdzYiR4UIwyUq8amQ57wBSS2L2X3r1r8Y5t3gcLW3TLq+4bFr8EtOg8Cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BsIb2Xzk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BsIb2Xzk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4452C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766364833;
	bh=rd0qFe7ogEFq5FxZ15ZJgTVhctynXbXNkHaTTns3BqE=;
	h=To:Subject:From:Date:From;
	b=BsIb2XzkpUEMUvS91bfK5+qQ67dJcXCDx5dfWLAeizu8blcgJ+HQwSrUzgqDe8k+L
	 MzWnZ+wrVxGM3lMAsAcmUcC/7v/AyNg3xODLF9fuORJhrojHuzgSLnncgIsk6KR+9t
	 21yEBd4B5TG9pVyKIGfLm/fle352pNRRxuyZ2c34QWP6sCjIPUJ8Pl3HdK7nezfBoG
	 tvFD6+qWrBc9sOyg0i8QPg3T2QOsSlAZI9VczqpKz5fWeTcdIm7bhwfIt4j1NEYgq5
	 2Lnk10F4M3+RHZ1t5VjCvUGco3pEM1KTaM6mmZhkSG/iBkK4CMTkAH7uyo5kHjYLyV
	 jcDfRnxICp5sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EE4E66886
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176636483358.25663.17644446572965562106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 332fe726ca699880c6881f428c896341f09ded06f1e33689cb552c620f79d295
Date: Mon, 22 Dec 2025 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766364833
