Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2C027C
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70CC3C433C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663790453;
	bh=tE4LYCqJPBVwHMoveScI4jGmUqOVGNwV9qIjAuFKU2c=;
	h=To:Subject:From:Date:From;
	b=gaacmDFfYO++MN41zUegCaosTLkCbaFHlEspWvMznxxZnsGX0d2h5R3Adnl23/OSF
	 my6CMe+NqvnL0RHfhe7TqDt4UHpb15YVvDNKUwGE8ce0YbA4xvLDeQ6c7o2J13nglG
	 SFiQftXVRJyTP6ql4c7r+VHTaZVbLTh7G1p0YGnS1/CXvgDcnKew8RzhjVlcLQe51S
	 ALtM6RIbwSBH61OZpAyzsGYKpPd2huWVZH0RnuOk8+uwww+BSkYnNd6aH6kTWw0ytt
	 4pX/8981Uhp4PYPGqfsle71/vqMHzRou3MgqkxQx+KBqrkedfQm2ATMHwYQyqvhwsi
	 0MkdaXsiegUXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55E9DC6FA82
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166379045334.7635.1142247578154664930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9868b2728699aa2b6d90ee426e7839bd466e174771fa8af3d9a04a8271da9c4
Date: Wed, 21 Sep 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663790453
