Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ED177494
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 06:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8BDEC433C8
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 06:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695363308;
	bh=ku2/6MrRORseScwJZE4zkGid7JKngdh7NDycSpSoXgQ=;
	h=To:Subject:From:Date:From;
	b=eRwuL5pGZCi2l4aasWkc/by83n5owEJILp5LB6QPMRHT6EsWZpNHSSBEhLD9tVLsg
	 P9gCXfiAfeZ4BL7zsiBqayKJZbD3yj7X769P88EAAqhPqK4GzPHQPRYRWzS7m8qef3
	 R4O6lqryV4+jwxkyNeqkRS64cTgwRc8mVWj5qrVVyOkFj1Gu8NRPv009qs2PaKUyzq
	 ybDKBaUB3wQSP4ixdcngDjnLu4boMQr48KCQ2qO7Iys7AD8DnsHCRdOyllEx4KT6o1
	 d1tekAGJukUPbWmHxuBE6jBpR7Nk1XIngZzPUmh4RAss+jP8oZNhGCJ9u1ZH+0+KYV
	 a/Crvcqht2UBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B393DE7D0CD
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 06:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169536330871.19636.7408543833241608877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9ab6395eaf0ff1bc928d9097233b1cb3fcbb3ee1dc58b316a81838887cfed87
Date: Fri, 22 Sep 2023 06:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695363308
