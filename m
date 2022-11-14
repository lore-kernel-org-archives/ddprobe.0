Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3F65EC7
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 02:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68027C433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 02:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668393654;
	bh=oAQn2piwjNJSs2ax9XUsfUS2lwRkHnjKxnEM9/Rm7mk=;
	h=To:Subject:From:Date:From;
	b=TuPy9hAocftcq5N2gUCHUcQU8AmOGff3y6JaW/A/ISSimOYKmFBF61XUdyFuQYRVP
	 haLNjQeArRLgnsG6FjGezX3VPs8FiynFgfcL36VWbsLjNdoZnlOT/bjX1005E/cv/B
	 opFbBSyv68BMk8OsqeTNftilH4sksilQhhzRJMviXj8RqxkgSYvosRkGPJ+zZRn9e0
	 jHheTnlVQAEyrwaEIqVSdfYakjPoozcTdaA8dBD79e9o/eWMN7S//knXgxEAScWR/l
	 RAFVllWrPBo9CDBfuiRKPJzL4he+xUoY1YXQnSqoCqd2UD3ZZgNXsuSeCDi9hR1Zqv
	 PAvZQPdu/9MmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50E36C4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 02:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166839365432.6970.12974608895736076710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79747ae1db02d2340af3a5accdb0e8b21d2e40ef3aa1d077aa0e49d0856303ce
Date: Mon, 14 Nov 2022 02:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668393654
