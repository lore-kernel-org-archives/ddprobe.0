Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB7E7626
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 08:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 796AAC433D6
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664179853;
	bh=40RIgUbaL6caUYn1lbNWIDciu7zcSMVQKVo/0r02DjA=;
	h=To:Subject:From:Date:From;
	b=Rlp++D09/Mf444j8iylOYmyo/QF30IxMUSMFmOEJ212jCF+7OHoATSmYMzqNoKosJ
	 /xlXv+gKt4nGMF2VDVXPbLYuUFOKNIsk+tv7SfRbjJyM/cEoC/n6fa1y5uv9yP49gH
	 gXumPgNzv70ZUoa6CYreCKKvLFYcVytx86Hd0H7ns+vH1l3EuL0G5hwA6Z3JePFW1p
	 2rit47rjSsEjY9O8i1Krps7FZnQZ4I2UcK7lWluIBzjUubifepHnOHpuU7ZyW6tlHi
	 MbYUGD8JvuQZVevtGloDRV24F9ugR5aLyh7yVffeY+Ey06BY5uYQTIJLQ8qj0bh2oe
	 mpsCK1z5sZIZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E38FC07E9D
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 08:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166417985337.8134.16426048030861953580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f7d3c50b2ec7f2fc2986b49ff0160048146468d4b1b948477c184430e5b3dc3
Date: Mon, 26 Sep 2022 08:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664179853
