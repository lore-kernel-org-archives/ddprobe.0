Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC6533C2A
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 654B5C433C1
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664732453;
	bh=b42rPhk94uCL+hXHMWyn7mAy4tG7rsB9SQlykTMnYTQ=;
	h=To:Subject:From:Date:From;
	b=oDOB0/GS/enSdTKofck7xt6nMq9X0pIrZUj9XVtU3E5dbXESkXwlW8fSvOZi4QTao
	 oPd/MTX7N13J/AIo8zhDulORdyqCY+rEJniil8ElkIOf1s880duqZkQVKVGtR6WbdV
	 p7tsnAm+TCJBsDGnSvcIvBt4MpXKwjfNJYU5TBPk2NNtLs3fnu91zJ3xHjgH8+Wi+V
	 f/YmkBz+dotY3xkxlvM1eGhsWc7SMVdW1smo30W7aM55LtX3wgXGTQ/DO0jQRdm3Fx
	 ShUfoaWVMLrOYTsx90LZGGq/NvFcfBYog+mua9wD2IdFU9GJWExA79T8GiaVl5V8XB
	 BNhMMM04hElkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F2E9C4332F
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166473245331.17416.2349620510915304391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd468120627c96289e0fd7ffd30412b34d24c81d2b766cd1ec497eb508925ff3
Date: Sun, 02 Oct 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664732453
