Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4845163
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 693E3C433D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663951253;
	bh=gb3UomOTuaKR4tgT/FlZQdIF4Z5Oz9EcDSAUKE/CK0Y=;
	h=To:Subject:From:Date:From;
	b=B3tenaiNEBu6YTLD/XFrc2s2CQQ3o98Z/vhtGU0aXZVyYPfdmoaIxFHSJDrqxYHyi
	 bMzbQ3AD8YbkvkJOr5d5ckESgyH7pG535pxSQbPT25/cde5FGp1drgL3ngjlbtcpgg
	 KyA/SCZGppMIs/ZV5QV+l5EGIAR8kwx2UmTNmYQ0sl2RmgoiOqHDALdibN64/qHkpE
	 kXJImZ9oX+WwD23UtB9w+92mFCT5cV8YvER8HeuhhBUb0qMofGuo2WprJJ7M2EHuel
	 gFpJVvTkTHAjYRJ+jdVY67siAwcgJeJkDy84xOcjmSqhfEkF3bVwlJnQrUQTpU1x7T
	 4s1PjPZiDiKFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F66AC6FA82
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166395125331.24854.18381885834841387305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1431dc0e1b71cc955c2da5fae85956b81087185cb41653b74fb939f4aeabdf3
Date: Fri, 23 Sep 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663951253
