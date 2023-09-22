Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CAC9377
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 02:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF105C433C8
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 02:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695348908;
	bh=x+2LIzdzN6zPjLrRmun35b1BrEN4iAbuAahO/UFkeMo=;
	h=To:Subject:From:Date:From;
	b=hkxbcE15acwIsYFWXHh2Oa5oC71jYtxa+gymyFCiKMkBRiebdK8cE0s9DQlNQhGmp
	 3TP/qUrnhB2O3jdfuAlP0wxJyAK0H3iLDpoA9oTqbhdD/MCu76ohPdkraFk6rh42cv
	 TUZIwb/hxFKcEvWVZtdVURHzGt6umvORHdNPm1FdNMfMr8ya0dxKa82s38RE5ZD51a
	 zEVZ8CLo8kiENJ4Q7fyKgO7agbsGhivDNz/wb2yzxSfimrmXovzm5pKrmH627kxaoy
	 wHLEbv/MEiMhiUB42PHon8T4qP6qxRkEGVeNufRAlS4UgB81cgGxBf99KK/jdAzLZv
	 0Ec8w2FHSY3Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE65E7D0BB
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 02:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169534890870.28193.17576544381026687349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db482372b4a83dadcdf818a157468d2210b845b185a290af75bf158653a35765
Date: Fri, 22 Sep 2023 02:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695348908
