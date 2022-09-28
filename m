Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B205A7F5
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F20BC433D6
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664340053;
	bh=8r1GwwwxPO8qvAIxuTs3iDc2gjBiv2zSI4/wGLOY0AM=;
	h=To:Subject:From:Date:From;
	b=NmQew5pG7wQUEIbGbR0G5yQA9QYBfO/j1TiU9a3kQbSA0DnyaTbwX9OFlyHo913ks
	 n6fj6PtwYK8xNZ/CYykKFFi95/CcnEeCzc+TLjn2asJbypjDWsLUKeaKrKCYeksPXq
	 wJpPi7Yq2rJmoUOWcW/usfkUfhbSBYVkSVEhPm2Wl3MDVxeJWfyQDuIBqscsAdWXIC
	 cqPzCTisWhz6OHJ7ThP83/skg3ELoij+NVVq+yBwvDoSe4I2Lpt/VaEFra8FccP0zX
	 aRV4j/L2oaH2nf4TffaYymCA0SBe3qretfQ5ps90i52YK14GfsKhUeNI3c0K7MHoY0
	 HFcMHL+R1fNtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51A0BC32771
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166434005332.26886.15361217796574615563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07645a3b07b6b4f4107a8901c5af38532ff06053338a39706a7acc2ed5ed6446
Date: Wed, 28 Sep 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664340053
