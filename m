Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 063232E7BD6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774781694; cv=none; b=RDTaIlkKq5ps6YasVg3OhYteknH/8t5i0Gg4/yEkKoDpy7r9/eFow6Q2tkMuCEa6Dk1Zv5efNCvnnPOW0v8OsFYFBEA3kTy8MgYzY4yfqO1JHt3x9372hbftHm8ZW7gfGhzSwOy5jd9RGwGNRxmBu6MQbCQSzpkOl3q0+/dczmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774781694; c=relaxed/simple;
	bh=oaIkDOz4ARpn3yNjkIuCKcWn32YKFxp2RFFNQvRJEWw=;
	h=To:Subject:From:Message-Id:Date; b=VLzFqeIAlAskRrxiJongpsaiJyEoXQNDO0rnTsus/ZPhSPunXm52jscmVh5LIEzMQwDuBzAiio9bOv7lZSDHnjhaLmo3OD4mpM6v8gFFYCEeO0SmFRkx9veJ4hzabgHvBVnzLuzOSNLI+LfYu1poSfLpB2j3QB3HuQfAZJ5lLvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dO1sqFkA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dO1sqFkA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AF1C2BC9E
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774781693;
	bh=oaIkDOz4ARpn3yNjkIuCKcWn32YKFxp2RFFNQvRJEWw=;
	h=To:Subject:From:Date:From;
	b=dO1sqFkAdVGkWLia2awtfKZqoBDwnUwdR/pGH5R7R6p8qqYarsvVgZITxzrbTgn4R
	 pPY3lDjWQ/X8yZSzHuU5VzGAxHkrUGkzuPSAxADRFj329ETnWRDC0X11mA50+vTeoA
	 FN9owXnbICPQW5njiPrN2jEBr37bJ6LKS8WEN+x7zm1tWpiFu1zdFvmXYqqRtSqWeZ
	 En1KT+poRd3WEaaWzpXOQRiwB7XycEN+XGwT3RGHxza9WnmtT9ATlb4U6XVikg8Tkv
	 ekbevRCjwQ59YLhSSW1M6r7j9pe9e0e/cEr+M5xVQGTJQFPPCcVG2WYX7qjB27KuR1
	 J/IXmz2Xqis4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9915AF3D600
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177478169358.20392.15424916687213246730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfc4f3aa29a17098e5ccf25f833ec72ba36bb4edd35523d8cb2af701a608190b
Date: Sun, 29 Mar 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774781693
