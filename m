Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C420DAD48
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 16:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 832E2C433F2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 16:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672849287;
	bh=YW4p6KC5JFzkTGqHEsBUswkpLCXgy0X+pDAosCGbF6I=;
	h=To:Subject:From:Date:From;
	b=Ikxao1QoXFTAplpcCpclO9OklviAe7Fps5+OSOyYv1VJYjEN/qElbeIVE0Aid+lqu
	 Yuoh4GuPb7tADeuqIGHj3NS95YwcH9nuvleK/dKIL+9hep3Tg1AaTJU3mQ54xesVmM
	 cNUbPP5rlnj984wFyi3lEHgAiu2gpMvu73efvT5rqCyfKroUqBRMgGC5XL2JQ0wCN1
	 0KtTDwYDOQxq4BX5nP7IzK8+uAe3JW3csGOiZEnQQRJOE+JuIIz9hXHnJYnv/JFm2A
	 gDPhZKjDQ4jstCLRSqjarf+J2zMlqounbWT2KARe5GXn2ydUTQ0424aptzrF2lv9xy
	 1lUQJW9Wq5eDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69860C4708D
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 16:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167284928742.23809.6130176202348175959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a7c88b6a0ee59ccfd90939d02ae58430ea2c1c478c84d36e3c7a8b91de9f28d
Date: Wed, 04 Jan 2023 16:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672849287
