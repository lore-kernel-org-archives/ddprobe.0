Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C8CE199AD
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNgRSMtV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D5EDC433BC
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700216896;
	bh=i2KrbcFFfC0Bs5+cxFOnT0xJGRh037gOiphlqIY5cag=;
	h=To:Subject:From:Date:From;
	b=tNgRSMtV4Zb9n88PdavTlzLSKc+8bjz4vCPThEg7pVUhnRGxaM7k4ObL4UhbU0/Ep
	 yl9htnsIFVWJlUDkKzgUCdXr0Z9OAgytPent1Gj8TU76YlHzFoP/VqkWo91S+dofvm
	 Zg/wedGKQ4IA0aRTGArg7/sEZb4GYEJLtwhimb+h3ei7bWxcxfqKrWY7zaoz4djuNP
	 3TVSSv8bGlKckpzhOifSQPW895giqhRvChl1BaY4qXxap3t6IT1AqV96tu22aicXTr
	 XaG3W16L6W0n7l5EGzEhS7zcwsHIwy7E1gFYdB1n9b+fJNNnQKtgau/5liUdkjuTCP
	 WmQ4346sgz0pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EF89C5AE4A
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170021689644.1785.17687852126998620790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6855a171407fd4d6c43bd6289c74edd1d2be88bf86f71b7d9461eebad52bdab2
Date: Fri, 17 Nov 2023 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700216896
