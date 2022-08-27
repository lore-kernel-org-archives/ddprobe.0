Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5F3E442A
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 18:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B179C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 18:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661626252;
	bh=qEQadvmwgmgJClWTvobcyLMYHSFciv21kKSFeyZI8+8=;
	h=To:Subject:From:Date:From;
	b=KaDmObER2LOoqU7p2ELunwqT4iNQnKKPzxa9QlU+kRENhyYJsMFUWPs+X8QrApdv3
	 lzvUs1Mdds/1bOw3BG7WmUn6eH7aArKUZCCtl2rFkgabl2Vlz6TOCgrKmFqU0JwXs3
	 5TIGbuL33c5bhP9+/31oLLd92TZwzXptZJLshWU+RoBIU4wNlIjwA47pAwmRLOvE6H
	 6WaCMZCdNIPnlthCqIvhIUEmo3T58Coi+Id6kC0y1vbl9KaY+8mgY5Z5LegIsRn4Y7
	 aT4P/0FzqbDyke12CDtDDfl6++W+kiyScPZFFreHiTAnYFwI5B3F9hnlezbN/NxsYW
	 0CX66lvaXkE7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52157ECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 18:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166162625232.13179.3448276069896309923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f00d4a396e8c5d6a041f7078737dbc8df008e47cf14f4745783f156c0d9ccb0e
Date: Sat, 27 Aug 2022 18:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661626252
