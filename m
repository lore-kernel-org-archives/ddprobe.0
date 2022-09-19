Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C077F4A1F
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 12:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DF56C433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663590053;
	bh=aJw7ObR7+q09uXOvCz9MZQEKz2sbXQ08HBAcSnHny3Q=;
	h=To:Subject:From:Date:From;
	b=a/vvQektBFejvTtLzFDCzER6YyYaM0g38RwgWRD7qaGcNbeWjPMibeHW4yGEITCyA
	 uzTv7s00vc9M27z0cp0zPHkWkCU8+luHNTXfxLhVl+8qg1fFRPb2UZNQgo2Yj7FGTO
	 D1jPnpc9qlbz8LZ340CS0WA0nfehV9itzZbH4XyFi4ocNPD8d5wQmsSb4xq2M44iWd
	 yshFlm9cNjnhsEnk+l6RR7umPJc0LrLFbTcSoRaaNikzLr6Y9c1mXMLGQfTPWKwI9I
	 vN1DHFKNtNwe0Ukc+h/oPyafJP/zWGvSEbeqoxKUsdGvaFTWqVTukq0vWy+0mQxWyO
	 KHhmVtFEEAFDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 543EDECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166359005333.22460.10708897961805124143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ab38736c57792eca996beeeb424fa587bec93bd1fc275ce7200d86853ebf495
Date: Mon, 19 Sep 2022 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663590053
