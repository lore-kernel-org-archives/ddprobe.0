Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA0DC66E0
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 23:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83017C433C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 23:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663024253;
	bh=JHO8/znpE2aQj/EbfHb/44VYJ0ENeu7iPscMRSgQTUI=;
	h=To:Subject:From:Date:From;
	b=PHCMfs6FkTcdM73y4bUIwrWKAyCFdNGpJ3cKLthU66/NNy807QQcVFFJBBifSneqF
	 GinL1FNjTPFMYbSuHxCsWOk0acWNH+IkFey+Caej/6vpW1xTYfRBpC7v+QzpBQmo9C
	 oAXTRSNgTMMrtBGxQoBCJ0aRIIVFv6PzluLm/Z7mcYUVG6Zu/MXygz8uN8Xia4Wf2t
	 xFvhsh8xJwH0QsjHsbTgrjGXTkp0y3XwMVF+sRQccCDtFXHiTsIretQZb5aiOHWQQm
	 wsbldkRR3oI7CpETpqnLpaM9vRCCVS/Qup29g9csk4QrGDa68q0QCfM8QDzMKSv4k+
	 OhVQaeYk1HlYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69220C6FA83
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 23:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166302425342.14633.7905839299813857141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e213039b116e2df5565c9ffe56a5a642df1b16f671b1ec47df8f89ab14069af5
Date: Mon, 12 Sep 2022 23:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663024253
