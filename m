Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DCE01861
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 13:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7ED6C433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 13:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679318825;
	bh=wCq5sqWdd0xCa0W+Df+8d85US5k14RwJdjbdqwhQiBg=;
	h=To:Subject:From:Date:From;
	b=D9GQOJWbh+kDB9TkHT32qFfkkPTGMFnABn6IOttJM4C+QSEN02HZNEbfSKw8V9vTG
	 so9xHBtWIZ2Vo1Gq7sQ58/JIItdkyaYuSNbjGEhOMiTSicVdDuHMUHVoWoy9tgaCxt
	 ihOROxu6o4BMGnDgEjs1z7cvSMqNFF37AbrvSClVBQt1Nek8Y83JfLv/kuPXfRfVem
	 PHt1J++TTJnEVdSgFH4u1Y2Ah60FJOmaZ59zNUhHdKDXqDUvIH6pTKwqjHDT1IuuwK
	 ZFfRTvXIhMucnGsUTKKyzURnm/VhztfZlLmSl/TyrFmengNSzU9ZIg8+iP5dAIktpu
	 jq3YcWP9FR+1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCE14C6FD1D
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 13:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167931882582.22399.3269708064587292874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4a3c7e767630956464bbbf07dfef7eb151c743fbd402d07d6e2722787ca862f
Date: Mon, 20 Mar 2023 13:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679318825
