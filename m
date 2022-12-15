Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9F4429B4
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 09:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84A21C433EF
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 09:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671097287;
	bh=VkoOcymw6yP2zuA0INEW8hx1um4c6gX3sRbR2cieoWM=;
	h=To:Subject:From:Date:From;
	b=mA3HQuto4R0+UnK5ZFA53DN+Ph1PC6FYWxzG184SYiMF8GJthEJx7mzom02E/TLn7
	 IY619jlmZwUJXV+lv8JHLpVRFguVH4xyJpQjRFVJIH0J2niXZ+dOJy0FmhoqS9XCFz
	 oMWV5+tRiHcO+Y2R7Y5cIZKiZcdAGPcK/PK04Bjc6fvMAPjAQAJm8JiTex1nn/KkED
	 In3UZHpPv1PRDkzy/VJNxRH8iM39H1Oe4QxzY8xahTAinxAK9AcFlgHNvOWinfitzf
	 xVk5Z9gLmHAdSDUA7yn2NGUjcQAdQwbppm22b2UpRd/qonaW86zuwJYk7s3ysUg+lh
	 kY84sHgBTnYQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66C7BC4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 09:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167109728740.6538.8458421286500229036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbcfa9e03dbe0b92590534fdb66df2ea5b6028d2c501c92fd0307d26c16e9d39
Date: Thu, 15 Dec 2022 09:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671097287
