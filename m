Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BFF320C
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 21:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FF4C433D2
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 21:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682718905;
	bh=qdDP5nJdbOzktSDbF2wXzUfVecSKYa3l3Nx19FAO+J0=;
	h=To:Subject:From:Date:From;
	b=geRd7mL2HP3b5apgwTLwM7bW+kekCGTnLUJECdvszpwtxTBK4nz6YY1qjymQpEPMB
	 M5nbJhF3PYAS2zNj8JaKCTRlh8J3vgh1gK+x/+67lVCnD5dfxdTiUOhu0TmWX3pkI1
	 NjuuH/jzrWxGX0wXa3kBOtMyHEedCsNCAMUCsUHI8d3VTXomV+wP0ch4Yj+XvwZZKX
	 xc3F9l3h2Dq8BE3bEbRXswj/7aeowADA+zvekAPEAlu2XPM2ReCiya/ljc0Les9KBK
	 1lEjnVLEFMlb8RLDssnutd6EFxotj6jBeM1kHSezBM1/2pllqMe4zUh9wHHPs9JDg0
	 8zNNaRh0gtU0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6647C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 21:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168271890573.21626.16377369134755758526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f505ea87fd7abf978b6673aaa640b17062b288f243eb2b70e218b47117fc8636
Date: Fri, 28 Apr 2023 21:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682718905
