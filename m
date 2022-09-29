Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D07FC7B
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 00:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E2CCC433B5
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664410853;
	bh=nXAVNmJzC9I3rGze5gNqOYepZ97I/ke1R2W59wIvQWw=;
	h=To:Subject:From:Date:From;
	b=c8OHMg+zp6nKVLJRZ4KCEO2Rij65nb1CvKCPd0lTI4ieql2A/IcxYeKzoYHsmaWlw
	 OvLgSGAWvOSq3CrZJt3Ap4vlSzzSOHqrd6JWho9fZGt/Dz9USojbaOcYJnmXn7BrI6
	 wlrFuAo+c+Sa3QfQBkuNZxAGNVDd0VX0VnfrstYFzT2+T98ZD4z6BbGFZr1BQG8Cra
	 LvMEyXlf07jAZU1YDyTEIarGVxvvR2uTy1zTpY+KjdGJtr1Sg0bYE2prAKz79Zk2sU
	 QGj3KpEcDmSEGa5U/NcjfKSd0FtpHOzUUx0K/+YZASaxeQAqu/6VlCVlCKps+rfi7o
	 gWiSOCyuw28LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 569F4C32771
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 00:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166441085334.27471.3807378121361898953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97b2c4b7936d084dcccdd8d53de7a70c51e43fdbd842ecb0009c988e267d7c16
Date: Thu, 29 Sep 2022 00:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664410853
