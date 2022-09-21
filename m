Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF7357C
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 09:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79B20C433C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663750853;
	bh=y45jNn1IhWszSyVf9y9a9OO+yXgKIC/+cVUUVzWHZb8=;
	h=To:Subject:From:Date:From;
	b=pKJtNYiLCYenxCxBy6DIq3zV67pg8WtxbUuzPalKK0xE0gZDoEoA5YWXyh5HoB6g/
	 zmy7WugsyxxRVmSUJZaN+1q4s8oNVb9xPt8cprdZMAHyYClovtu9E42U10H/BA4Aq0
	 3Cbtpl2juRfqGsVA5rfIFoeq7K4AJhbu42hsv1/jijKBGK5rr5I398JPj/NxsA3Uuo
	 eocDO3RPl/ehB71ebOq4W/KCodbN96u1N2PWfOJ+bt8J5EL8LRiSTC1BsMixidJ1Cd
	 S0EdYNlu2jzoF97Dc4wZnNyOx4Pzd3c7Ao/TvLPMX37SeFy2CuKMLQxwededWDdhLN
	 NGzS8o6VF7Y7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A3E2C6FA8B
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 09:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166375085335.30442.461978480944662984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 195d6b40e1b7c7f7d9518afbc6177605a00c7b65218ef53e97968c99c0083d7d
Date: Wed, 21 Sep 2022 09:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663750853
