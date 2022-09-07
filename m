Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0FCC7E
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 02:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67E3BC433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662519053;
	bh=LXkhC9SiUxypQFkcK4ffZfthktDzcwjL80r0OPYi10w=;
	h=To:Subject:From:Date:From;
	b=NBlFAmoCIlkr/LTrRljVbt6FaLoomt737zt2LgcIQDBP1T53BSeR1COHspfklrh4u
	 91kfDE670p4LZ2ZYOQCiXXl3mix4vJUHel4xz3aFme5xukOMwxUs2kxDE7yalAGMSr
	 ejC/heKt+5HXrSSZS4ci6mCX5B5qZ5m4zDJNHc3WbIe9Hp4iAaEKHEWWN1VOM7ZHU2
	 6HHuGO5b00IyOrJ2RRlaVFFzYTsRrAeLZ4JTWIXu4Y9mQbewbGrgNyBgy5Gx3SJ2mg
	 wlMlMBPcbTtO0w3sTXqW2n1Bo6Kbaw62ykKELxZYlxvXIDRXPdF0x+YPKUiBSKYc/W
	 lkXDVZrBikpQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F116ECAAD5
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 02:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166251905331.8959.13105080906935524278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 377b2f34e013fb2c0772e76460bb7b83bc5eac2553e262007b7ce2daeaaab1a7
Date: Wed, 07 Sep 2022 02:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662519053
