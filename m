Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8791E2853
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749281994; cv=none; b=jWe6+iBicKPS+3lkjmixctGNQGR5EvOOBiV2iogkK32b+SLwZFJD4NQ1iGnUQ1bVOH3xTqTxZJTefVbUmHrldvlR1fOdOLBoOiO1nzo2YJe5c0Qo6DjYTvPq5MhkkNmsycPmlYHWDtSromMeP/BTIbijkmDy/Eajvgify8Cyqd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749281994; c=relaxed/simple;
	bh=Yg1W6LiijEdvMmZMoTDiFaXwr0rJQNIS05pSspxxT+A=;
	h=To:Subject:From:Message-Id:Date; b=kLz7GQ1ALWK4JCyeu52WTfbgROqMsLPI33Jts+Qadoaafib6KzxrDRdKg4VpbmkrJ4nwAi1XQlQkyZsArSITsw2LWydsplba6qJDtgM7BoBGGuZ1kLW0iVUunqKtezHstchprqAdcVTN1YJY2lfxhbSX1uXOLm0/0lE8HyOyhDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dkcr835z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dkcr835z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A291DC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749281993;
	bh=Yg1W6LiijEdvMmZMoTDiFaXwr0rJQNIS05pSspxxT+A=;
	h=To:Subject:From:Date:From;
	b=Dkcr835z8zNUJm9iJuCujtvPwHWfNI5XV+shVBxPJHbbY/hqmyjlLlQqDyGel9mBK
	 Ts7KmQpd4jrDPVRDJH8B0pjki6hTH56bKT7UMV7C2M9aviSWFoWSaOtVL68MQ6cvn5
	 qZibwtiJWFfbACNj6db9lfUiPsK6bf+zk0IGQwh+wZWSbKCes8N3r7wJL+c2+YFnu/
	 bp4jfi4IyZAZxb9Zqsd3ZBpQbhe0aMk4c31xVEMvWtDQR9YtqvuRrNyXajXCouvqzw
	 46XBDIhucNfSa+Smx9M5dCTo5KLqebwh8OEnak0FawFE90sIfDBudJIZF+93OCkY6s
	 OAhM+Q163y9yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA59C61CE8
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174928199358.11713.2017676800360836849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10453b5dd11c30bca11afbd603e36afdfbdea1484db8f33dcb8a1e93bf32ff4c
Date: Sat, 07 Jun 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749281993
