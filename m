Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416D010A04
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vBvftuSX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8305DC433C8
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697929096;
	bh=IsaBBidcM2ZbK2Ag4oWwCUGSBAXV8KuzYcKZ6Y685T4=;
	h=To:Subject:From:Date:From;
	b=vBvftuSXiQQZ6cNevoqEMOD2nC4TcpbhpHgqL/dpYNIVvTzMO7LXY5lso2J4HYd1l
	 VR4ah8oxgElU3U09EbqoXRDXBRHOCGSxBGj1vMHS7kErCdtsV2zEgtje5wiDZLw6at
	 eIc8ZEb8hLio6S/lbBLFC8EDtVrcWJrw8nu1qjSn34aHTUiuzoJWPvUCHhsFmemhz2
	 3Ytc7uDB2qt5DPHm6zyXXtir1Gx6hH+ueIxuQ7Xzwjq7VOmngZEFTFnuxBwubWAPXx
	 A3shhRg/KW0c+Xnvja2EZuog0pfBkroGm0e/iNhcVHHK84seZKQtzXxc6JOFew7YXe
	 s2C6XpvuMtePA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65EDBC0032E
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169792909641.24820.3266273027366399235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16326423f0a4e1dde0be90ed7d93bdfc6eb1d718fbffe2dd68dbdd44ed7fad58
Date: Sat, 21 Oct 2023 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697929096
