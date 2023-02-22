Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8843239
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 20:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA532C433D2
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 20:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677098046;
	bh=ZtbF1W2Nu4DCgz1Xn49ch3rLbjAmkbYaeExZX2KZeDA=;
	h=To:Subject:From:Date:From;
	b=Z6VgguUDUKTQksMC/9//c4TbzVxdF8OjX7eNaJHby+U1PZ8d8Xz06DrKzoLGk2/Nu
	 wDltNxzMnGVhtseTdB6WDjjfssmOVOx4myuvsvByCxjfkRiCbEivwJy/nEkAD9d7Ch
	 r6slDa9XRb9Icas1lWBAhOWa2OKMNOvX33kTZX0o9aC2HpsBxy0kLkSLaNSYpG5jNO
	 9hNhFfvRUbID1GmexxJqMFPK5/0npvbClLui9SDU/tTdz9tdNFgUoHHjBWnvH3ZNVy
	 GyTB0SMMW3TB3ZUfkdFcK6RY+gautXgzxexBm4iV8J6FXnCS0bbSELZbRKX0ZOpeZh
	 He2eFAhM8Lklg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD631C636D6
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 20:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167709804582.8540.17198483703854769373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f41dcd369956babe2012836ebe4b27fb798292f009652c5c93ec4eb782034b18
Date: Wed, 22 Feb 2023 20:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677098045
