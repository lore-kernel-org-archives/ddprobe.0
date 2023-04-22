Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D91E7F
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 13:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A04C433D2
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 13:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682168465;
	bh=zGXd9NxtgQT8qO5YhKAKm1F2/rT1dhkByU8iZWABoL4=;
	h=To:Subject:From:Date:From;
	b=tv7Gg9/um616KdnFfvBjBRdd/b0I1J5bEIp+zqxB13ANPrP1b+5Bfp+GIQ8/9/pdd
	 f5cQp4frfmoWuhcGwSGHnMBVf1jrD1EOcni8XD941a0poDUdsFAcUUcC9J7A0+cpDt
	 DD0+BT4ea+GOo9x8HNqxaTcCYtpQtcspnfGUMOnkp6u0RGkj/VJmjXecwR7cqaEgdz
	 9BGIdJxC9aujas5KMk7hJqUbNnxIDvwkw4X6iopQcNnb821eUgKhue1Ik8d8c6lTAK
	 2gBCOFAwse2Sk5/WJQ/RxJGtXeoKAqewDuvYT75LvDy9HzS+lpeEqZi1iGYoJJcQ7A
	 K0j/mWTUAVh5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB9B4C7618E
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 13:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168216846575.9316.42514388081559922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f0e7ee143e1a6bc1461423d4f3cb1373294f2aa6442b69e73fa4626a29a08df
Date: Sat, 22 Apr 2023 13:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682168465
