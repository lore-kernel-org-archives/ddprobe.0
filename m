Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B87B8639
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 05:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E9FEC433C1
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 05:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669699254;
	bh=/+zkDR8jgdBkCeqFPNMsEGj6HoGhox5I4swSijo6E3k=;
	h=To:Subject:From:Date:From;
	b=CzMwLf1K6/Ev2FAVBGoG5Bs6oWW8tJKKey2SqT7nDGuU+zMJ1lZ/ZAaz+QID9/w2V
	 2kPlYD5oky1H856e51LVlXJXZOAB5RJb7n5063sFVZrffTe6OP6zHjoPTWCOeDI4jm
	 t7nO+g+lXSEVGuFrPcrjIE+UVQS9DO5bkvVJWlnoKmJ+KaKTX+iL+htK6n/q5eoYm5
	 N52sXp/IjaXToR4i8VnFBCVRdgUtwvJEYeEfc/Hm8kEPn3N/8XmuAQ8O/SVSkGnKFE
	 1hXKSS4MKHPehJae9aWA6AF8W2V7MnzozySilk7UBItPQcOQUW+L5Zann2A8C3WJTV
	 Mf5n2Vi5BsUmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52476C433FE
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 05:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166969925433.25021.17733337688169457300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49a07007c155d927e36ca3e8d02dd83cd477c2d48cbc219816c129d08736496d
Date: Tue, 29 Nov 2022 05:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669699254
