Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6637E1376
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 00:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC06EC433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 00:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687911788;
	bh=BzY8tZ6VKyPe27Ex+o9TDHuCRCsgh/thhQsnoWcg5vs=;
	h=To:Subject:From:Date:From;
	b=PctR5gIsbghYlp+3cqpLJjIDiA08j6AZLt1ITlxXQQnM5rPSQVG/zlUc3fveWSOKw
	 AQOc0xSv3wAZrXWa0zqz0thrh3ynhvF7XFUAM7HiabGU7vmca6Mmk14FKyT5Vq8k2w
	 zL6nCo5iEgTZqI4xGC5HWjVPxro3P3kNWeVe5Hf4FnIFPDudJ92AyRXU5i4VJ3b+rj
	 qW5U41QCmBWuEwsqJpW62OGilwWtbtUrVpaBXTubYeAxrXIGIYh7ESKLvr/TBHIZxs
	 vuJPiQiXhviXu/Li0u+0UTI3pq7Qoy3agKPLTnfGavYcEhm9audOoXtjaF8MBcsz8h
	 gTR/7b2Uc5Ywg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6A8FEB64D9
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 00:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168791178866.2422.8061747726394017488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe37f1586b13a562946257d4cd89be4a8fd15ab88e5cbd76474fc97f49414042
Date: Wed, 28 Jun 2023 00:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687911788
