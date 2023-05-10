Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B448C0F
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 20:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF647C433EF
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 20:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683748865;
	bh=55PEwtHy1IpM1Szdhpf8NuKbQ3JBGY3BVUIxCjNdkKc=;
	h=To:Subject:From:Date:From;
	b=TjPo6Bh8Etyj6AmABnexhwJ1SjJ4gHQGS4lliPdC3lzw1JrEl47c3OFvDjayHY7L2
	 ga9M4ZAw7DkZf4h1aS4chLTah7BJcsMHz78jGG7fDKzcTj37lr/MTBc5WqcbOYpD20
	 5Yd57010cDf1f4KlqyNKTnNMYIHToIqMyPBdXhvD8l1DKqQ8WKREodFief2SHOP2Zv
	 Dfya7mj4VEkA/Ic7xRsPe/3aY7cjos9cLRrflLc9UVrwqz4Z7NR8pPdEu6UywPxHN5
	 zHRHWDaS2G5aJEXcHzNvsw+ANo+HlMwcs9paKPnJ/TVZDZR7lukQAcxmqTbv6r8Tqb
	 UQ3LH3h3sWxhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C69BFC77B7C
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 20:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168374886580.2580.10971125685342358798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50f81b3e7f766fee80e27afa0f7370629a6ede07e97cb37be3f15404ec124540
Date: Wed, 10 May 2023 20:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683748865
