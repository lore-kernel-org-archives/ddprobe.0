Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E8CF7B
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 12:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67AE9C433C1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666528253;
	bh=2WAUVpoJUMW358kDMwllZyC9VQcS0EjDJrn9PtWMR0M=;
	h=To:Subject:From:Date:From;
	b=OzU2wUpQE+1vvX8H+m3oiVRQFz1B7XXzsFBhTx0Y8Rz8ZDT1OlBCLMkS5w474MxKA
	 pHQcCJU9Z6dqQHf/KyWKSkj3C5LVd1NIhYN+MafrWj8aMEWG2wxPxk1swTeSbAV4In
	 pfNuK2jHp8anjr1WMCfTaCNS7goIqGD2k46AaUVHyOc/Kj0ODveiW6ehdIfkG+ewjC
	 y8r55yWMyvbP7BDmRhPmrLtjO8Pk+qMMzM+nDPyYBYKqBAnusV2gG2nG2n3Ee9hwP2
	 3R/PRdLoZgZro61fGtG/ODfEywsKt73U+2i8bS0XM3Wy/YwFJeYbwvePXHQMshM9n3
	 twwWM8Aop4bwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5115EC433FE
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 12:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166652825332.7711.7877598015148214070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63b9bb75f6dc2eed033c268a1fc81e4baf6a48b9e5dbcca7af065b06ed0e25cd
Date: Sun, 23 Oct 2022 12:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666528253
