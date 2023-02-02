Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387418F43
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 17:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0925C433D2
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 17:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675358165;
	bh=7kRvxiupzrll++GQxu+6INNoFLbwwajiOSReJcx3A6Q=;
	h=To:Subject:From:Date:From;
	b=Yazrzwtf8qICEn/IJRj/2UWjiO30mgXY2YmMH6y50mWUuxBQ0Hl0Ipd+4IYL0jw7L
	 flBwOx6dx31jg32mY47GMT9ExBF4H0R/YzDe3ADyf14CfilgQqqFBIfQzl14GqD7gq
	 U7PBORK0kHc2+b6pTIrZWtlorbm9CauBime/pWbFWsNSQ+GJgH4oqo2RqmKKvzg9N1
	 0aN/BYwxTSJTzTQOyngov0dNyrWrhnSNtFicLYwWwi/r/iHKxzLYUxvUaEx0cBDEal
	 a1uSyEH1XkbjppoolC9TAQ6XnPBENjni72Ju775aG0EcR/CksIlRAPBSjvhWfRC2xy
	 wDD8L7jaH7hzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C01C1C61DA4
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 17:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167535816577.14095.81366177549896115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96d7694461f64cbebe17e1bfce293e25034cf0843b73cb79d990c5986839eb6a
Date: Thu, 02 Feb 2023 17:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675358165
