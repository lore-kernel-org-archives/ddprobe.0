Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA0EF10F5
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 04:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 752B4C433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665289853;
	bh=I2CfKsT/u0qWy9My6nEhCwsIsQyL1N3ofQjXk09Smxk=;
	h=To:Subject:From:Date:From;
	b=Xb4Venujq4pNXo5X+EbFJM9KJNiAh/T9sPh0XSvIoLQBB8m2BB3U+sn19iM5QvxN6
	 E2dWKaUheCYLy4lqsqSqpuFnPPOJpnIJs+gMag2c3IYx1FijIrOb8Hsj10v37RGE+J
	 69XZlCunKA1ZmL9Esoi5mqlR100XCklo+C641ntCUm6sB6RVGsW8aO6rqab3Hr7hex
	 Tq/fH8aEqOOCAxdLONDF/LLr9xhveTFzUrREBUJzp1Iyk0r7TjGY4B6+FxWvxuL5mj
	 ZZ2ElMwDL0TMlDFfOP+mgiBmOel2fPbFeK7rAMwhQBAeBDJPP3r6O43TDaoUDGti85
	 jH5OpG+/YoTFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58ED3C433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 04:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166528985333.29067.1545520437757467993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 287a6897bfe794869e23cbffa8d71b918d31519133255f4bc9b93467438b7ecf
Date: Sun, 09 Oct 2022 04:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665289853
