Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 734651FA6
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 12:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1438DC433EF
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 12:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684670526;
	bh=uwPd9qCYHOnNNWotMcLQWgEcnSlK98zUeb5ePhRUR7M=;
	h=To:Subject:From:Date:From;
	b=NZdWjSrIdJ7FR/krL5tzQMQru7bzJBpCcFniKcNascGSj44cd8ILhXKNCCZ713Q+A
	 bk7aPGS7iNCUm7iyIXsacxxLvYX2AJn0Vu+9INZyVVo+PhtqUy5Fmo17a5uyulgxMX
	 L+KBQkqfTJYBt3QzdXeGhQOONWIVkwHPccOKwFVdSyTeysuLjt6s6Ye1YuWQY+PjoB
	 Rs33htdPjuZkGZURgimyZ5ZhvJ8DCzToDPpijg7IyeSEA9jiKoHCGotWE0RSPTc5Le
	 K/s4o1oUNz/VGO9keMcFy+vf+bVUF3CLjETPILd0irDxtM4OfhLpVigKJ+8W6Gc+m6
	 CGPGFFgnTXCZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBAD6C77B7C
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 12:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168467052586.28018.6063163022390078322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70981d7bcd079e0b944e7ca3e4c6b6aeb4daf964b9dc33613fa7bcf59d09c56e
Date: Sun, 21 May 2023 12:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684670525
