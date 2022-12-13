Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A78B6748C
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 16:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C723C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 16:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670950287;
	bh=Ex0w+7MzKMQkV0tdimZnxW/0W8/sfo+ZfdBcQYd3C0Q=;
	h=To:Subject:From:Date:From;
	b=or7En9mcCywRxMRaq7Zlqywc7Kvva6KpDjCBnZZo5+8w5XAFI0+H8XzGAbRVRNxUn
	 QkHLCUeqpuEp15vNaLTz09xdTTKYbqDYKYwKaZz3XF7h5OZHwsrMIezsyOJkx9PnMA
	 x5d3uxSqU0pJZX4ex2j4ev16YCvoQFBy92dmhg0oerglHMslzNi8JatGW2Ys16HdHW
	 amnJgQH7T89tINlsRvYtBtgm8nThnNgDReHo/q9spbguz7ZgdSPvr19In5erkdNGpf
	 9gPFL/G64jVrKHgzHC2iyknLPBaRGnHbbZfXX7LWmGnS+gpXnzerDwezcNjuYkX7el
	 BI4rDDjWpd2jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65206C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 16:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167095028740.5734.7523766231508130493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91f5b86c2e85555e98266b88c8a3f1b610756405be8e8bf98a6845fe679a4807
Date: Tue, 13 Dec 2022 16:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670950287
