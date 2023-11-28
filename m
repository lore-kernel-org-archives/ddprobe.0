Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0014FCA73
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gboJrnRE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76199C433C7
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701155896;
	bh=MViuOUcYNa7Lnd5/trjfIDEe/6pW4Zv0j+tBgwt6elY=;
	h=To:Subject:From:Date:From;
	b=gboJrnRETfKu+yxeGKs/i/CqD6j9ScN6WVrJLsNG/qss3fsa3LxJBALGI4ECWJlYK
	 DVV663mCxW6NJGRhJtV6Xl/4WdAcrCJ47nLR1/eNrR7np+8yLlVySrKmJZow5Zsovd
	 K7yfRxA0nvVlrCATEiSpc+VJdsMCTTRyVxD05+8ZqOv4lhNbqNCff6eCKsDrB/FN4q
	 9MpSlZS1zPTh5OyNyzb0+UVrOS8CjRR3hmewTzO35DbjA673k1SaSM/mjhbK1eT553
	 GxKLZcfc9ks0QLO9hQoNUyh6synwZYn/4V0fjnEceofrXGRx8I9fOMc/YDaj2l+W3e
	 VeMjUpnqFPbhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C5A4C4167B
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170115589636.27158.9102919623930667334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a2a8f27e375c0896689acdd3e5ba51aa719e7643f216f00aa8588872817a61c
Date: Tue, 28 Nov 2023 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701155896
