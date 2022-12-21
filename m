Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEA491FB3
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 08:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88365C433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 08:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671609687;
	bh=Bm/7BVEKkwa/A/i0NaDRg/lkO5CEmCQ4oIzYLvRoM+s=;
	h=To:Subject:From:Date:From;
	b=i5tVLq9G+9thB61QU22T5x0RFCNxRoSlT+BSiCsjJyR7X7wr19Ryjx0H5pbnwXUDk
	 X5Yr8vvXY4fmFEackIA0byw0/mcqqnFk7X16Yg1AHT8cwo9V4x2lVtrqhVH6w7wuGO
	 Lb34TdZ7S80tM2yqxbFyzJ85NSuT7c2IA9QDcY6z9GNAB5VGx9Gc0WtNAxIBVdReOa
	 wl6pAFkeSeSM1FZ0BPjiLTNeWHBRmHz5wbxwNEu4/+EhD3SQ6WvA0Ejn1eQNgqn4h1
	 fHwKuLXdHEpkhkpOWA1AdftrvUKSZOenmoo/oWNe4W0oMoIgWYHk9LsXnYDdMdLhmu
	 TXg4wkZEvd6xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 660C9C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 08:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167160968740.31473.12512348731504730039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd6202261a1a2bb8e2d0e19b756efa0d5ebefb8b8177545223079e97afacb47f
Date: Wed, 21 Dec 2022 08:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671609687
