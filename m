Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ECD7273E0
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 12:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QoZqFmJz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C64BAC433C7
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 12:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697461028;
	bh=nz9IeJ5gr5rJkhBoc1ABIHI0VxNq4FyhsyyfwTyL6ak=;
	h=To:Subject:From:Date:From;
	b=QoZqFmJzinw9eeW6AOUCkYxzinqCOnED1ek/A8WKUl3eY8A4k80uyP3ZISLAsCzQ/
	 3TDvrahS1Drg/A8Z6eNtauls0EBoSg14Iluddsa7kUbVVJTjRyEvOSyr9IhFEJJKep
	 XDTSns3agOdavUN4IKgj749MMxBNkOkrZcwsMeKtmcbger4Rm5D3XiWftvloP0qKvb
	 rtZ3PnVys3hZBAI969ECeGHHwyJgczJkEyBP5pCB4DoFXnu57Rjnm8VhYeZ2CpaBU0
	 NgYreHdTe0ws4h0Rc1lzfyuR94yIRZzB7o7I1FQFqqM6yDNovZzgekoeUdjxzQbDxy
	 vg+O6AkFWw0Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F2BCDB465
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 12:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169746102868.7645.5865490570056943285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f5e4ea5736a632b8a9c3edace2fca1c1050720bf6cfb2cc8fa3386f29bfda0c
Date: Mon, 16 Oct 2023 12:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697461028
