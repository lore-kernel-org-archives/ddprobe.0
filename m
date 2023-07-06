Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4463C1FB1
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 08:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2FC2C433C7
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 08:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688633828;
	bh=7h9VG5pvE7zRxgJjLOmN/BIK29cT/vT/3KHiprQ7fzM=;
	h=To:Subject:From:Date:From;
	b=ISTwUEnjQ/4FOz2pYU3SKl70sH+hbhHKIxQDRzl99R3J0p6nMJ6UhUPwL+RHLloa5
	 DmCNURszbJqyiAsmMYrvY493udZdRRUr95O88Yl2/YMvG1aDRw0dn6h1LwMA71gbWk
	 nEjYiv/YrIA5iZWhoP4U6EIMCQNSa+OnCYbloDwZ5jLKPfohFVvdhLbNAK1dRv0U/H
	 PU7MMPF9IMQO4yV5Od7jbE7tpp4mv5shdqKXN9Q0h3/fB7skhrHPlJBEImO6TTJ4I7
	 bb2af8p0f44tkpbDNONhbV8+uFxRUhyQZplLKJB9sGaDyw5vESlclvHiP2MfyAtsK6
	 Wq5Pt03NYsoCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6EA6EB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 08:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168863382867.13252.11636025683845286815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 299f787af4fac047b109d3ce1dcfb89858008dd7c10bb0e0947158f83518284e
Date: Thu, 06 Jul 2023 08:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688633828
