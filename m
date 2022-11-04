Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C762E10EB
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 07:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 749ADC433C1
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 07:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667547054;
	bh=5uWJwp25MOvEiCG/LjB2Yx+aHN/AZhBnskg5fE9GFlE=;
	h=To:Subject:From:Date:From;
	b=lF/y1lNMG0ixJ2XDKcAddvtkw21PiThm06X/TzeBb+ApXfZHlGzuq9RZkq3AGCOgD
	 bUM9SVqlGfYcs94VYjXJHoA1udIkz2SLnNJGbIov8ibQrqwcFcGVKKrYH/bX/fdniw
	 3EOtkHH4+8AAYbInigeAd5M63rqJMg+LAkVkSckihXBWzx36xyvB6ZkXWblZakhHTy
	 AEqALh8HHIU5GNr0Y+JYWuvuJxQgbkoawvOIuO4q1N9xJtYZgYRbJWa6JGWpr9xygA
	 foGGqXs+See6vmXSxadWWKwY6fyaiWbqBTw7Q9JpVFN3+a98iTACXmvrSnTUedxQyV
	 ljqeHAl4BjVQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58FFCC4332F
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 07:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166754705435.5433.11180496632182934747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77db8da5ced70e59e63b72ac19790ec52d8c732a26fe9ea0a26c9e5254b2f619
Date: Fri, 04 Nov 2022 07:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667547054
