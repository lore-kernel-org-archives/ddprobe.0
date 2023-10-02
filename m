Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72087A20
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 08:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D120AC433C8
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 08:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696235768;
	bh=mYs0br7gLroqIgq7EJUqsCbWIWxM5eMXU4Xln4X5cG8=;
	h=To:Subject:From:Date:From;
	b=uEJDpSsrMZLNvs/Z9UhTXglNb83U3ar+xunxUafgafFBMKgV5lc4ZqutcUINZvapy
	 PhuwjoLuhRDKV/PS7WCHmtJYln5KYT9L1Xu/L93146SeYZmfuNl3mQaOLYEG9wekfL
	 nlFDIY/0PRsPQjF8pY9oTnL/UTUkYCCQQBRqCEIzNtgQ47g6HnYuue268JcVS17CGQ
	 076ngshiMYnQJv9woP6CtlvH+4dJSMA4AgnygCFbREy3QiUbZIm9aJ08nPjgfXCY2B
	 zXDUo2qIp95qyH83O9uJ0AjCsU2dACxc6BOME7xtEvcddm+SMjmfKeehKV+8k/TbYi
	 RCN7tIKsoVZFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEADE7849A
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 08:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169623576870.19893.8297072173871454098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77a52234cd9f785e8cb4a1f7c5db5810ffbb832b5978e46fc6a82e835cd841f0
Date: Mon, 02 Oct 2023 08:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696235768
