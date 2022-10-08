Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEFDB7E
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 02:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72B32C433D7
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665196853;
	bh=4QfNXaC5dnCmGRn/G78TYHHgnIF6nUZqnSaRPqzxFl4=;
	h=To:Subject:From:Date:From;
	b=QfjUwNOuzfJK/mcBK6d7CtSEcfoHxvIa4TujXE4RKi7Nu96RtTaEtjBjs8W3IYusi
	 +bRSF4T12QmyMjihnlultqkpi1aTNSa61iQ2D+TfUgsErhAZV1arEMr0swCAJ8yvVo
	 TsJX3OB2vOWdk5fuv8pU++/qFMc8+WkQu1K6ol+ztqEYXalJIFRQPZnee/B2ItlqR5
	 9d1H7d5Tlyib4PyuKdyQojSd+EGSy3GwXPoLp73WqLtnUP8SxSBm50KbuRORsaBol6
	 L+EpJ5fqc8n2jIyDev52/z9I5/dvt1YIC8HZjsvvHr2+1In2bR1b8iuwfq3qMnCG4U
	 LEXRdKtZ787MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55AC8C433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 02:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166519685334.21365.11697824624211682296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25ffff0365deeddff36ba4f0e2712721577bd2367f9fb0403adc4004ba7bcdae
Date: Sat, 08 Oct 2022 02:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665196853
