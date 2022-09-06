Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C392915AA
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 03:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6981EC433B5
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662435653;
	bh=Q7f/aOrtg2a1nI7nbBMqhQ2vfsCFRv5Ym3XFoY+d5uc=;
	h=To:Subject:From:Date:From;
	b=bv2XicAFe5cICeeeyGTSbowOjhvAX5sckIcph4UN7+vYbS+mlKRI7f92NQnd8yyxs
	 /xbwIXyO4UG8HfE6xyNDJyMVutMs60wEL/OpvYvQ0mTBvY0p5nDcrcCJ1bljw+YWD3
	 PXBs/nU03d50KFG/i1RLUpxxqFMrBqEkpQmJipsTgJEja+X1CDHnpzB4ZFK2Ohm0Hd
	 Ln2ySs+NZaXUIGg6INaeX1cjKL+d7NlHJ0BQQi7nTbPJO7MFToLpLqk2Jefz/0jbwf
	 x/LVm8jhwvJatW6kG4Gazi7pxKeyLcwdR+IifGX8FXDQDQcfdlJI0Ut7DxqSCf652M
	 V50VB1LuoLtUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E30CECAAD3
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 03:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166243565331.17210.16057259833306724323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f19a32d5860191cf58ac719119dfb7742d183034f9b7abf60d8ce24d8d90f348
Date: Tue, 06 Sep 2022 03:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662435653
