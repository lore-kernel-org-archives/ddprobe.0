Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EEC419A
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 04:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E77F3C433C0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 04:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688014388;
	bh=xA2xNSCCS/abXqH9SghVYjxR0PzcvdTwln380IC67rI=;
	h=To:Subject:From:Date:From;
	b=oVTH4cqX3ArvmGnUnmLcVQGs703tlu+VxCmSTFh4YATu4wb6Ppt9G5RqAv81Ptmqf
	 Tp8Uo5GyDNTZkqaug3J5rowEtadEwd1bLVXBFfvz8Cc7ANByFyIj9fVDzqRMPGzeTF
	 5W2UM9apUtWI8BQGrc2h/TrkURLeFVv9EOKsrY2TaOYAp5U5nOBDamVPxxJTWaagX5
	 3SNJloOBa0taDe7tWo50KJHdMKV2O1VeseY65XA611TOwVAuDCuLA30ToCGP4hSZOC
	 e8wOwe9whMqyrHMSS8B7EuJgo7ZWq+R2rW/Ienu85HDz1sDQzo+KGLgSWPhoShCRRv
	 QoleKgNQtTotA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C035AEB64D9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 04:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168801438875.10691.9731314305152973808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0f348ad5351d980529126462cbbe2a3cda70a7f59ab2ea7062958978e129eb7
Date: Thu, 29 Jun 2023 04:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688014388
