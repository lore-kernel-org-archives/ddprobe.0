Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D01D25C6E8
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746019794; cv=none; b=T4isOqlm7LVPYab+UPZurlLJtMttxpMkmOlkrDol1yxrevdByFmPgUQE0Z+oR1BohyuHVSpH4GANxZslFibgww0LkULhGPZ5YRGpMnMRowAA6bj2vr9CPy63fMueXpP9DPzhcnewgw7V/dVvU/w6szTnNCcEzqFsnSBzgi+hvxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746019794; c=relaxed/simple;
	bh=FRqAdDaBEqbmkZVMHHreoaoh3nNubH29WLYWToyQccU=;
	h=To:Subject:From:Message-Id:Date; b=a+xRV2w8LMKPLaF1QZRo1h+7/l+U7X9OjvyhdTmnLhKIDNrmSbWSU/CINUYZXo9MQM2MUdofYuJkR/8DCwe83a5QLhCgs6J84gAWBno1lZ1loNW68ta7swGuOV6PyRLhb6fZII/GqkNAIxodJy9G6XVXG2pRJjrX2iwrCiYvGTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N4YQQKrF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N4YQQKrF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FDBC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746019793;
	bh=FRqAdDaBEqbmkZVMHHreoaoh3nNubH29WLYWToyQccU=;
	h=To:Subject:From:Date:From;
	b=N4YQQKrFBygByKwHxQTVSAZQGLn4KJQtMoPz6JwQO6M/cqNpFPOJPKff+SXDt5ZEQ
	 beh+9zZCtz0fhWPLTkIz00LJMCgqI86c3OASW1DuI/leVjwnMgYeLFBHbm+lXqlglH
	 M+JUpuhWFvwsGvP9QKA54qcY93pvQFh3UPdKG56rVY4zLSq3o9TEaxnyJy71yTokqz
	 Falh3ehp3H59mCIuAlRLGCEGPi3/oSpAeu1i6gmban5JjGMi0PnGyFPY2mt4TNj0A5
	 wkpYWF1OQvG/7xhW/5xstxM9rfzNwEzYhwNtN8nj8pKoveJHPxbhmN5tuTxcWohiJP
	 IDp7k4Au/66rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF20C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174601979357.32625.17997522707784465681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11b0cee8cea5c817b9c3ef926cc26ef5a802c14cee5bc4cb1d8a920294e8793e
Date: Wed, 30 Apr 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746019793
