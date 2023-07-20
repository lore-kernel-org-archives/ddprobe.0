Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1FA17D9
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 03:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D55C433C8
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 03:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689823928;
	bh=5Zq+NBL9BMXkW4HoIqzFJX1EvIRAgdluuHciEP8zw7o=;
	h=To:Subject:From:Date:From;
	b=eIv02qLbtMwgDPC1yzcq920Cd80ldQNTK7gkavvcO35rCXcyj2Ecz5GQ1nvp146kW
	 5mKFuYc47UEGTtzeaNQg3Ez1qIc+NDYtq5ro4qeCyC6YP6eAF3vr8X+xdX5kCiQqv+
	 Ytq5Kw7576Mdrq8/hW76iL79WyxJvOqj8hrjvCd8OgNxzVlFQdulaPIvRZ2eqTz7Gm
	 tXYFwV22jpt4/NaNXHYogoOYgU/vPnYZj5alkGeZNHcFODitXPINQIWXBeEg9q1lTg
	 KixGKjABGGilF+4OFTYa780KsfvsxM2Btd689eM0KGN29Z6E0pDCVKsXMh8vyZ4uPc
	 teGx8sF2Qeprw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5C2EB64DD
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 03:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168982392870.20219.3824970468107402352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc59081c8d4db1c160a360496260c7bdc7c351e5d9851f085d8db4a6a5875f05
Date: Thu, 20 Jul 2023 03:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689823928
