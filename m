Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F4372B773
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 04:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VM7AdNz9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCC6C433C8
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 04:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697086028;
	bh=Pm727bzWReqQnRxG3pwCyOe5nMjWkoB59KKhWNF58cQ=;
	h=To:Subject:From:Date:From;
	b=VM7AdNz9GD8xC1YKQMfwU6UavSsRS75jsOt79yBuuBaq5ATTDadaG8woYSc5d48c5
	 pmD4+qeMhJ5yEFbS9Xot4p71HZj93DTaUqAU4K3c8i+9r7xVRqACyCj888JADu84Ry
	 eOlGGIPF/6sh4EHZ2taY0DP1JvVswsaYHrQhuUYpeflI4xnGPBqQ7Pxm0fAH8q24AP
	 +DRyesI5dckaC6tQjYMwgAepm/0iBt/yYWKdbzCAhBc/rZkgdS7Y7QEeVpOC735kwt
	 xqcxka4iqDk8SHvNPR+Y2Njje4QrsenaAkr+8ZIB4HQD4WnaeW4wHfN9s1k1umsBnr
	 Psmw9zKgkQ2mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDE9CDB46E
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 04:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169708602870.6219.7472663319207713811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec01d94751f8575d013ea32b44f2812fcc3141e6eefead9ef7084fd8da65a69c
Date: Thu, 12 Oct 2023 04:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697086028
