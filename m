Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53AEFB641
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 13:25:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5A68C4E684
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 13:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695302708;
	bh=V/kQAbe7dc3yKa3ccT14I7qjEzHhpQiS5M0tB1NgZvU=;
	h=To:Subject:From:Date:From;
	b=qGAO5LayUfwYmanFIh4oNChNDeSa2fMUtgb4Gzodc5qohCsOnL89eS4/w288M5mMH
	 Af64QUXbmG/+txd3GzXMQkEdd4HgRejnJaMcG2F3uacctStLdpThqX7/buiu2ydMdX
	 CYbuUTIRq2aTc+Wu9NdmR0oY+8A55tFMvzjHIWNOQPQAg6+dSnpqcQ9zpUn7NQ6A6f
	 asJQt9TrQ4tohacc3zw6KXMxPbMSzIO5/yyUrynrzeueDia/OEESz0LGJAPBWl7Zt7
	 jTemKNTTb1cGq7C/fcqNeR1G5OzbztcgMOlE8RVF+592boxHrctBF5KRsUujoWN35D
	 D5+mtOYr/1xCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98A6E7106C
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 13:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169530270868.12933.4014662547799096880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bd0d6b14939f210a41db6ab88a14edaac7a81c5b7c5ecd3e409b09111e72ddb
Date: Thu, 21 Sep 2023 13:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695302708
