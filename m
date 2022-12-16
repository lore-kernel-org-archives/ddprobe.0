Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3A422F53
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 19:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85620C433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 19:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671217887;
	bh=VDmftq/Eum1PebyhnXQzfR+yZCEsLj9X0RxXUjygpJo=;
	h=To:Subject:From:Date:From;
	b=Lxp5rCSLFLGyGEFQEjqbOOdduSY05G21hegRwNQn1hFi5geHs5fHiOmAQ/QT+Nn5U
	 cckWBLGpIuB+rfbCOxkALo6WnDQYfX2V5jc8h0Tm1UNSrpH81KUy+9lFoqsCK3cLS+
	 xnwU3kH/fnm0EdGsM4B7G4IMZ0CNvMQaHBdMRKyp/5YRWL64Pm8BZq3DrvY9+Qa/q7
	 j/tlqsfIYuSl/i8sj2giZY/G2jECLiq2HI9xRTBaJPrYhxpHPMDJniutl9O573wbA3
	 aFKO0EsG4/OAdrxTUv4wK73vwEouRWojBYy4GxjzeBXerRJTIZPiTimS8BN/gScK/u
	 bxK6MQ/Jl2uew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65199C001B2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 19:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167121788740.20761.13513996328461935595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8093c437d3b539a896804f495bd9ae21adc2b5273d1412b50f7aa94f8aecd01
Date: Fri, 16 Dec 2022 19:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671217887
