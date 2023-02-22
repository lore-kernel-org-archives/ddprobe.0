Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 714832F3F
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 14:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 17514C433D2
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 14:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677076386;
	bh=ZmRyg+8GIVCFTQUK37RxDRVAqSbjozjOdxizDJF8AxI=;
	h=To:Subject:From:Date:From;
	b=oREqIqEUw+V6ME012mjt8N9JaTg4MI3h/hXGRuu5cO2J+DyAtOyKcMGJE+rVwE15Z
	 8ZjCluHMIspMcKoG5Bs8Eke/AIadOLt9MttTTW7PNVyAg6Kbatt1TMvqMWtdk3kezQ
	 JYEaoDafxoqZ4brAirrVop1HUEQ/f3N3uUdygH925ffmW1b/Mcwf51dXanEKtxEmAk
	 68ZMAkUe3kfLsvAj3Y4ySntvLf80hb5Mq6/P5XFgbpnFJLWXyjmP5jN5yf5IYWajYa
	 vhXBwD627GEVlkjWA4wbnsVVTuHWpFmf6OYCSNDFUb3d4RgCvId2yQb1ArWlX3shYn
	 v3omcSh/sdB6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EEAB3C61DA4
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 14:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167707638596.4279.2941751436117871581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23f8f53ba25cb6fb86fd3e6457f716b065d541d1a1fd039e6adc3767785bf74f
Date: Wed, 22 Feb 2023 14:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677076385
