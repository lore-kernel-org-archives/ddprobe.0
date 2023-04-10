Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349E8195
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 06:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE7FC433D2
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 06:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681108265;
	bh=c/EfE3jljx5nMpNpRZGYHL6GMmGlNloRLP//jn+BtxI=;
	h=To:Subject:From:Date:From;
	b=tYDfsqkQ/Bi0wMRj/ehMURSw6Y9Pq9qORRv4Mf0u5z41CJePf9rULGlOKr9ax8jBc
	 YiF6betxVVwNL6pGOahvanyWSVNMfXm7BnXCaMxv3QICmtFdxEYLemutB/odBQCcZz
	 two9V72MNUy1raL7B3KCFoOUPI7QD5/0Bv6jWYKqeas/T2zZK+DM83ZwHam08TbkKP
	 VDJlt5gKWcv6dHGS2J7XDqW/v4KD7BXmqOFcsl8VB6IOaAHIrMMugTmePEORo/OXbo
	 VyqwaocIc4VHCRSsKhuBo6lyjHf/9fZynZoUgPVw6b00dpsxAXf8E7uutjjt5Yo8tQ
	 J9IGer0RcZONA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD489C76196
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 06:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168110826575.29676.4951138274417118949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18a9e320689f46d1bb29201b6e18b327b8765a422ee642852c28f1d3d4d98491
Date: Mon, 10 Apr 2023 06:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681108265
