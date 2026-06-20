Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAD3347533
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 11:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781954794; cv=none; b=NBDthG5a8qSMX1F7b5ieRc6KzvUvFJ61srlUVCxSKpi/Xd1Z2WsCviggJQrq0Aq0KasiIZDr1OCZeiS6O1PC2NfbyIDhs31BE5TOQ7RkZWoKYpAVaLQgSCelwn3eGHwKULFGEJ/mZBQaoReQ4GbPaVKuIhkA7r+lhiWK0zyu7xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781954794; c=relaxed/simple;
	bh=jQ5rS2tp0FMmbhy5dlVjfhKJZ3mq6g2NlvEZBhjv0XU=;
	h=To:Subject:From:Message-Id:Date; b=Oe03Ckh1Av9CwxARiK4QRBT+9u7qV+F/73xl+7Vorr8+pDlelHVcP7pOpz40WwW2Y018FSL4smvXm8I4wL4FtHmyNFLcQ7E4PY2uGfPfQBPeQd1d5gi/wiujpNW6MNNP7U7qE7rCb0MxLOxKCZ1cBSFb/ISVbHUDWsa1ea/DUO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLMPRPAW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLMPRPAW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0826C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 11:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781954793;
	bh=jQ5rS2tp0FMmbhy5dlVjfhKJZ3mq6g2NlvEZBhjv0XU=;
	h=To:Subject:From:Date:From;
	b=cLMPRPAWSyuTGVOiNKAbUY+8/+oR44eJxDdMURCjEJy7Oin7NfY4tKzSa6bxj2eL4
	 S6R7MbT0kfrHME7PtZxmvso4UWllc25TSrEqvXAppYFZhHX8pFbBGk9wGTuyrsHVZA
	 5qVldVw/HwS6obfxjXQs67oXEov97bHPI88Lr70aKGUvVgU4tO+emLlk7lk7+bvGCo
	 b6bd6osezqMIjBDstFJEsrnx+V/9MDCOHCh96vXefk6vDvUq/k6y+LZG35JtPZcsLN
	 QDbG8rf/fm68N82ZRtR4iR1Ec2/JFJzOvPJyIBUr/80meV24mZ0KwngUZisljgyvXy
	 SNBnTsf8OJVIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2344CD4F26
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 11:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178195479369.2459.3634865766621603560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82decd8846bc105e6ca291d55143c748111b4929c0323b389dda1dce438afd16
Date: Sat, 20 Jun 2026 11:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781954793
