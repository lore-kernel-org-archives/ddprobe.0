Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327CE15A3
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 02:53:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D69F8C433D2
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 02:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680317586;
	bh=Y5zZGvYrMHLm9Qk3clwOIz52Lm/LxXQcWuasEJm2BHQ=;
	h=To:Subject:From:Date:From;
	b=XSSATZuZ0ifQhCS5olDj86L1VDOOBtE4TBFvsOBSSXpvV34Sx3fNw3IJrVM0aNgHz
	 0FlZAFfe3uWCLobbySsP9UTRYwPXnW/P9sdztMWcOjYCKTaxLN2ZT1s2Oe+G6eWYx5
	 lwhAMXQ59DTmHP/QeceCfFD3TfrUbm3YP9HPDU6fxPZm02S313FtAywA0+QwB+O6Y2
	 i6fjh5Kb1jdkf9Z7+7YlHRed7OIMKirQ7faBdapIhhgWEn+m46ddttD7PwskjQmKTC
	 eaZkzWTnk8RgSoQCiFZmx1w3LZ9ANDzz5/JP8Tlbg3c/KOnzlYortSgOvXpUFVBVes
	 NrAKWpsjHr8zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1788C76196
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 02:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168031758572.8114.16174864202049673852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93c266ae218c017f9e4b699570a06be211fc02bec2a6c2ee08405b40319341f3
Date: Sat, 01 Apr 2023 02:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680317585
