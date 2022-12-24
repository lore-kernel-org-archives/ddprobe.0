Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E443F17C9
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 02:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C6A4C433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 02:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671847287;
	bh=t/uApDK3+k7l0SGH/Pp2f9ZY/1+bimiV8dBNYMUUopQ=;
	h=To:Subject:From:Date:From;
	b=DJBZ/VTz7i1OlPpI5sdNnGbNStNC9uEjJcDhyuIPn6AZxAFPLpXfKcerRaO0KHZfI
	 vnj2AkRBPtGtS/BUaCDalCQ7gf1Gr0sgtobOG3Jyo/gE774f2S+Gv8IyX+Z5K+oENm
	 CzegvgvS5ed23ZBpFrD1HjgNIB1l9/iJVvjSt+bB6dTSUx78EaDBQiiW8kAaOBliNc
	 5aqa545wz+HeenmJ2WCQbT4+Z84YZsHGvAeI6sL9XpRmVjr+ma+10J8QrvRowb1y65
	 VNpKG/r5+jFUlL3ZhnMXFD5ccH6t/6LIm6pTqDtT52oMGS03QDrJco79tROoVECuq3
	 ANBMlXNOYLx1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 745B4C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 02:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167184728742.26262.1970233826543528875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7c97c8e7edf622ec104effd7620b89ef7546e16f41192c732608b4ed5dd696f
Date: Sat, 24 Dec 2022 02:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671847287
