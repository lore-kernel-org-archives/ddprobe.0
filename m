Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E354C7B
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 16:23:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C68ADC433EF
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 16:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674663785;
	bh=JjGzI1m2inrnK0R17lyijSEvvJXO+x9SMRiQN9HXxU0=;
	h=To:Subject:From:Date:From;
	b=AeyXmi6W5tKiHQBH1F1Xi8OJmKcntx1wOyYe0F+syTR/phJ81/4Pcd+lk/v15YLcj
	 NizHqMIzWiiUhkc6WDnBiBiJQOGvKr2OBV/EA9OrKzPMuuK/jV0LxuqoDN22pDy8KH
	 QN37TEoVIUlaZsgNaVV4aVn3/o+TSIlxl6+2GXF38DpX4dmOht5NKq4WNRgLRr5m8X
	 0RGXGSBVqasek6bzkg93+iT5SVr/iB7fFCoQWig9xv8hljzNNNmcLrhJwc8fO0fV3Q
	 FbQnKRmps4wllPw4wSO3wW20CB0i0n5MxQJQJAzON5QLllXS5qhhc/lrGVj1FTCwha
	 aZspPqCpZr/GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F44C27C76
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 16:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167466378572.25840.6287556502371001514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 577cbb1bfce23ec0d468748e190f6493449d26d813b570eb3b1f820d3b465f89
Date: Wed, 25 Jan 2023 16:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674663785
