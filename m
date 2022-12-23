Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0E9415BD
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 22:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83A62C433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 22:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671834087;
	bh=2rF3NI8DmV4lE8/lo4WvcuF7k2IfNI2XJ3cCOGuscUc=;
	h=To:Subject:From:Date:From;
	b=V31nv6tKpLtRxkK/Bi0BqPbqush1KMRuEa+VlGneOM2zHlmBuCIRoCYXG9ElwM7MB
	 ANdt/YfRacq6nCuSiZ7QIUFCuKv52acj9BsReN65qKI8qa3e4zSfxMXpiu4ALHyYBq
	 rNYWXeRVKVfNL1NTEzUKjijaY+MNmX29OWwObyzW0sYfra6Uba4L1xIFTGOZ2x+01T
	 JgTgtxjKR6Xer/B6a/9KlfjfheAkqyAohNjdaJLmXV348mhEND2HqB+wpTKE4jQO7g
	 3iiPyjQysThrvfROIWHM06cSbei3gShJEdqBvcJ9JlbjOJPgFjgyKVudfxVvhhod1q
	 8G9rrdE7fqEOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63557C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 22:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167183408739.20122.2015708944276774520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84c805f11623c6fb3f97f8d4287226ffe289246585095d1c3b4218c2290c411e
Date: Fri, 23 Dec 2022 22:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671834087
