Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C74DF3C02
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 17:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73A9FC433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662397253;
	bh=ZfAmNVfznsQN1a/vvaOWZVoYDZ5Gf33i3qQuds9Tgjo=;
	h=To:Subject:From:Date:From;
	b=ZsVhWCzXgjo1dLamFxFPSpun7D1PqtOWKKX30Bpefzf+fW1ECJ2Lmcem3n5J5SXsN
	 QFoK0G0FSftXu26Rq3EtC2OHdAmfEUrfPVB6xm/LKDZ7k0x3pUnYdm/55KqRmIj/ZQ
	 PzclF1t4vzltXDD7oX5zv7hvfCe29Ye21xICfX5CkxHgtSltOJJIdpNQRR+Z06ANkp
	 rnYYQ538XF/8i1CaVmvTQADMPqlcy7S43P0aIGomPtU54+8BL5UbWsWVdOhcqLweqW
	 RV8xR+fD7jw1GsiwrnORlbMyni6oG1+CV7HXS+UWmWG0RDK1n1dwKfMiHUmdyBmib+
	 Jcq39dOQOguZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 557EBECAAD5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 17:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166239725334.25551.13798606418818824556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8245a46f4c81d2b852d0c828023a21276889327317b96903d3fb8e0dda2c71a9
Date: Mon, 05 Sep 2022 17:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662397253
