Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404A4D2E0
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 16:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F29E7C433D2
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 16:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679416086;
	bh=rsTtTcaezileARqpFVKv1vBUCQFuTJ1kCL5M4U48z5I=;
	h=To:Subject:From:Date:From;
	b=GMkjUChsTWHOeYa4VeEd1kOq/txQOM7AYswWXRRvGQ+/lcTHb4YmH+mtU3QZw8gVu
	 ySpaVwGohynt8Nce8nA/cQYp7jw6qnjsirE4XUp3RgC+cDqHu82s9CvHpVWwJFQznF
	 x+/AJ4hlyNrfQ10CtltNKiJ0aPHTEXmm3JPqSxsFR/SDwjeU9fiswE5SdbWNVCEC4N
	 a6/NCAW8a6dxs41dcB6mJ7ZO7CXP5/2lTlvJca0r1I3wpeh87UDvUgn/6o6TaxZ/4R
	 lFLGA6kgFCZjoO7BhB0lXuYcfJ9b8xDxfTkLMVEPwDVhm26GuFxL1szbbGcvSKPYcj
	 BTS9LQNEfV+CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D59F2C74A5B
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 16:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167941608585.7665.11353838335816608619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11929bfdfe068e008eab7745b2a38fdcea733281d7bb5bdf5752f14fb3286df3
Date: Tue, 21 Mar 2023 16:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679416085
