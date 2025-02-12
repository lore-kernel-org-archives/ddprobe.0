Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59877207650
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 23:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739403535; cv=none; b=GCmKb2MlsAloWUa9jNcXR2lY8uvEHPghVgMefu/k+Qrib+eqVViaIy+iXx3B5pDfQez48vCZPwaH875N3K6769QBPlZB4fYGk2eP+Yc2ToGD1CmxcDm/0Eh/2bAjk+ptgZ41RHpszaXPOSH7Uc1yv5grdl9iRE9ljC5uesMF7xA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739403535; c=relaxed/simple;
	bh=s28e4wXUhWEwKLW6QGBfcWnv4vkIX+MyE4Z2a/tJU5E=;
	h=To:Subject:From:Message-Id:Date; b=JtCMhypfcUJcPcnlCQwTiZ/xg+9Az58LHZN3jJbF6Lor6575OD7Z8JaWG+pRB/WGI5vco/lFx4kluovA9nkD7qbLPssSb/XvJuHVfc7QxhLLmhlnBpv1X3bC5YCyctT7GpMscvpyBr9vcACkL+wnwzqSN58LcWnWghQ5FO4mDRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y6Iowb+B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6Iowb+B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B0AC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 23:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739403533;
	bh=s28e4wXUhWEwKLW6QGBfcWnv4vkIX+MyE4Z2a/tJU5E=;
	h=To:Subject:From:Date:From;
	b=Y6Iowb+BRcekUTC3uob9PunXOgaFC88peu9yZeG6Cy1/tZ4zqLKu/mLv8F1PBI6Yb
	 xyvL25RmToQvRsbseg7r2zXUYGDbr3Tc1CTWe84u9GlpH3Qf4bJYybpk/LtEt68sTI
	 C05I0qprCFGh6ggy5MjgdihGLKxZTUL94tdcOFQyjVeZHyBxWyA7xuXWvixh9j+24Y
	 XYazOQRhEMpZBFQ2VBRhcQCM1NU7bKJr+p3qiEdng6Y5ZQdTLnXhxmLaWmrWH8jACy
	 GKSOVCn7DnBEb7/6MweKzBApcYW/pulTZ1TANQ9k3l36P7yA0/OISdUvyd04ZUA6LG
	 rEhxOQfmgYJjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1100C02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 23:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173940353365.29922.11004552271644174784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff83d47c84157eccdb9bee5054a4e1ce0cb1b3a99e789d5303945e168da7f736
Date: Wed, 12 Feb 2025 23:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739403533
