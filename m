Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B048B20E2
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 07:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DEE1C433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 07:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669621254;
	bh=NL7RpZRJU9QlGdEg0O0Sdb4piMuwCmOhc7XH9qVCFdM=;
	h=To:Subject:From:Date:From;
	b=K/Im2mZMW6/b61wAfPEmNCbRtrICl2i59tBq+kaBoCZt3Q51IuPF8vPrVrPRQF+pd
	 1P+D1E1ShwvZUu1uRj2pq/Mhr2bCikE7GWF6e40yK28yVoBIWn4LS1/HdKgm5d9FgV
	 gy3wQr0u4SLYDVESN9PLLLUvUFJKRYUOQ//QHWTuf6zTUaqL1MD20OspHBwxOHWMw1
	 b2a9V7S3Isp7e6VddzLI7eP4er8J0rJMZsa1dKr0ornHj+SHD3DaCJfbtHrWYeuaRG
	 pzl0CRL5M5HVRuDIaWRgY01mmwuVxgMjU546XGuw7oVQiri6ip+FoIOVwb8Zh77LRg
	 Hxn5NB8f4PGCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 524E8C4321E
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 07:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166962125432.2703.1681770204877897483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 452cd3b0f54d540b71171ebab56d6ea79330cd3f812633fbcc3ad9960b0eca39
Date: Mon, 28 Nov 2022 07:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669621254
