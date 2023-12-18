Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF1B101E2
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EaKi8Slf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 749E7C433C8
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702931896;
	bh=vlW9C7rCRPxnwuj75/aSF8B/P2SlJTG7nnHzHtBSm6o=;
	h=To:Subject:From:Date:From;
	b=EaKi8Slfx6LCv/yTikI14794ZbKPMLL5JmK4JVQleWr10prGes/aUAfP9U900qTQu
	 AEmM4L2l5288wPtH9gqw613+lW43M+U8oz+mJj2GxgCxjf1x4ENKa1VMcP5jWOCB0J
	 Vg3yaFJu+TzZhQ8LleDQxlGR/6nYAysNLPQQuHZX4/XtGmSQ8ufvFMzr/2ziqbJcQN
	 rLVFu/zNfr3c19E5gY1jAUd9RbKOx+MLV85NWcqhh41kcYU5e2BUo7URkgi84eIoFi
	 datvZCHvBrc1QcaWRR8+Q+H8XHmlVj3uWdsbwv5RaHD/fTCM04GGI/+f+/Sl1L8n14
	 mFKqt5zvg3n1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DBCEC35274
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170293189637.17311.9010938474475278520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6b0eafa685f5e0c88897c04e3bad9ae50a5997b993f15faab21deb0b4956bb8
Date: Mon, 18 Dec 2023 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702931896
