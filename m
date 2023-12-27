Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5195392
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TxXpoOTN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94C22C433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703661496;
	bh=4c8KxmJqgjeZGLt7RP+sDDBCgWBDGJWsTaske4YEXV0=;
	h=To:Subject:From:Date:From;
	b=TxXpoOTNO6wjnf8lWIjaUyTjmEYInGTfA5ZPpXBIk4N47VOgimZzrX39eltRCwW6p
	 O+soWZfX8y4jzEJyF02P6prr1fkU6lzLUDkKHkz6US+VTS4JZMKN1wspnSONXa+0DL
	 vb52V/iCwGfFN9FLpB0vyl45rzsukb8yOks4qg4Hz2wfnn/WVqj7Qeebb1ApxY2H4q
	 KKuymtQ2GtkzcUwBdBCZciDfkZjHaRQYjLf9kIhixIfZk2iIl1TvSOsUCa7kCLutSg
	 M0brqueb5YuXsRSei2mMRyZZaKWJZs5w/L621VH35vN3JaTdJqxTA946kklDBc5Gsq
	 t0r7UT6Ny7fZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B15EC46CD2
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170366149642.2412.664955768493387017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4bb13733916bf156b8039504d6bf7a180671603b4416c6008bb9a4c426579b5
Date: Wed, 27 Dec 2023 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703661496
