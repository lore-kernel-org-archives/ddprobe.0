Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EBCD3603EF
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 10:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782209794; cv=none; b=flxjwLwN/WWsarHXCJQSQVDr08QibTQEtmsQG6bjDEcv7HjtAiCE/TkSTPJjS+aoEhreXN14JX/FT6dNhlGnq7keD1BrlgiMd3A2Ae0d6t7JBTy0qbWmLtPBAkJUQLd0JtUO8dkp83M1Gi1FfNLX6QvE/XvMiRuIDfO/8ja1qgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782209794; c=relaxed/simple;
	bh=SpAjbyM5+R2iLmv+i5Mq0U75em0AiOgUC/m5+XJRam0=;
	h=To:Subject:From:Message-Id:Date; b=pozSzXRjrG8IUrR/M30vEoIXohq3vb9ZSL8DcatrK4MCcQ+8Q0La5V/KgljjsTocuIPBoYU2fXJg9v0YDGy87tqojQD0Q+rw36VsfF+d96jP4eEwdARY83rA4GZ6Sn2oLY2CI7bz8YHc5STfYtybs8QHsQBihGV6Xkr/uG1sgmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ivo2RL8+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ivo2RL8+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA7AC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 10:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782209793;
	bh=SpAjbyM5+R2iLmv+i5Mq0U75em0AiOgUC/m5+XJRam0=;
	h=To:Subject:From:Date:From;
	b=Ivo2RL8+EBNDtaVEw5pPzNPcUcrgMaez1bkrn3ZPOBG9fnzP3tTQsF7vu+fUE2lZR
	 3jfpSYIjwSBBxCgbUgvti5m283SpDZQvVXfFSDCYKuiAWY7FXmcfZwftPK2439hQPi
	 CQjZ0cTKx///G9cNQRXNp2w/+1ptK328dFuvHUx10UPtpf91nbatMXowziDycZUiGT
	 XcmODtOj6EOju1CrTD35WbKuwUIF6tLUmO98AgZdpfi6K4VI/OuuMK6CcuzEZall7N
	 766GSoTm+GJEtWoh9qqhYkUYt+CoSUzQXQkkzGHwmw7+mSJJWNa6B39XSBPFczaSqQ
	 RalDWjk8LwCXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA504CDB470
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 10:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178220979368.2391.11458687535436420090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99411b335945209f2969a059da99e2e085fe66e6d94bddf7bf94ba1e9b104cc4
Date: Tue, 23 Jun 2026 10:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782209793
