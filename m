Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2769C1369
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 07:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1FC7C433D2
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673509287;
	bh=UfNxS/O+jCIa9Z2VIEdDt9zatdWCcw6ff9vLZUaqWKM=;
	h=To:Subject:From:Date:From;
	b=r/ZC7QSyMXk6c09WGNlRQbRuMTp5YCWhCQoYlIeyRqrhMoT+QLrWj3ftR2/iDwGHZ
	 082ejLVJOQh+zmCBHwQa5uwx4sdkM7REFClaY0EA7Cx7OD2PoZpzaMiQCW72oQS9Yx
	 GBMoOlUAp9c2uUBBvv3PTn2sztfD/uNUKqvYi6+1mDw5dFwrc93W2sXX7aQxgxLyFk
	 qUCpjL7G8+6V2DJJheXTp/nISaGA67BiLnaXR3+zd7/FZ/9hG0AVopRQNPifFPGRO4
	 cPSsdldZdYpMTVNyncGWjiMLkpHL5Q37zsneqphonRaglJB4Sz/K8sKWn09BR3p1v1
	 osDFs5x8HWWQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93282C54EBD
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 07:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167350928757.31319.9261324151889497310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 999a3d57d0f822ef65e17809fa44dae8525959ac6773032a92168ff11f056b01
Date: Thu, 12 Jan 2023 07:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673509287
