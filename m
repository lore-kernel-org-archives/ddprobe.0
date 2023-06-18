Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61D7C79D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 21:10:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3362C433C0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 21:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687122608;
	bh=qIsuVaj+X7jY3JOstZVO1WFLoRvxSyEqNB/bsGPrOTc=;
	h=To:Subject:From:Date:From;
	b=d57/H0Ej780kT3KDagft6ypq+YpJR00cprHCQm9eWpxBNTxNQ46A+/wMwPmbTEJsU
	 xLyiGj9g+DaatSRFPvyWYo4xw4KV4t6SzJeZNjbbOd2RZ6hlGURS+3s/JSrGzMmhly
	 Sptza41jSEFtlYV8mdPvxJn/XPLTaXueCTOPLSuOn6qwYew5xdENm2qfO8BrH+E50y
	 Y3CQbqa6HL6H6JBcFfw837aT4j9rjWhcSw4rPTyORNqKStxj8mqpZeH6P/vMLiYjfd
	 YUSID+bribUODr5J9Edcn/Xx5JcyUeZA5JjNa8W6Rl8S42kR+AiB+nXgBgzGQAP4xh
	 iGjOb6zysdHnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3CC4EB64D7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 21:10:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168712260871.7792.10534136277120781842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbcc2c678aa7509b443ec8f4ae0c3714445bfa14cde65002cd6550aeb2dce889
Date: Sun, 18 Jun 2023 21:10:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687122608
