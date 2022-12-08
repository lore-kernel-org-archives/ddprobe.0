Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D91A88F6F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 19:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DFA9C433D2
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 19:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670528487;
	bh=VOtyhpbciDnUHdm2+n5LXiWhBecfLmi/0Q2NJKA4Jcw=;
	h=To:Subject:From:Date:From;
	b=N9LKwvPhry21CUCMi9u/zdLIL9uAGQt9dvKk5BTtoQr0RnO97jRNLqR2OlFumel+x
	 QkDnCt6sPRUkcJwJnedpEA00pRU/jFCZFS5kft9Ypr75Y2LL1Bg2SCjvQyxx52BL+b
	 TRtlLY0X8Hf1Gp1Ap/k6JhI+4doGi/HMqUp+JjU9L8xP/IiqMguKRci8dJoZMdMes5
	 MrIpIESKThuYOTFchj59GC1ZfV56Ik2jsJ5zqMjbB+yHtFTHNFSnQRU3+C3rYUIZRG
	 geM3k/KL8WwiI626+4aF5jc41VgLXVoz5VoXNP5u34560LwvNAFpoNdxkqA4EQ0LYr
	 Ffzp5JDyMux+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69220C10F1B
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 19:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167052848741.10182.6665572034771214229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4734d390656590a86ac661801e410f0321b2cb7c7004ba0196d0809de4a05bfb
Date: Thu, 08 Dec 2022 19:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670528487
