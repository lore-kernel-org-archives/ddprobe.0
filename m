Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8D011C26
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 23:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F544C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 23:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670023254;
	bh=xqNTHPReGUKiPFMwJiaBpee6SHaHoq4F+cxnArviyM0=;
	h=To:Subject:From:Date:From;
	b=BseiPzqS20X9y+SzsKXDPGKrMUvRtXi3Q1FAmUqT0fJA3EvsvhuKmvzyKfqmuA5HT
	 8dVarAOKcCwKhZvvv2ngKqIAIUq2ZQLXnuRhi9r9rCIJgQaopzjoBCWuaClXeNS8TG
	 Nwfbxny8okblqV6B186qqgpO5Gx0LPwa9CV/rTARt7UTUV4p5xKKE63CrLbvZ8R9LP
	 APTDZQTuIxfQM5N4bBrnfOtQS3RF+Z8iJpVaNNqONr5//oA1s/mRPNvMwg0nwfOn9Q
	 YvbTALx0Xc0AqM6QZB3ereXH2WTOTw5RzS38g58AW/RssOxHev9tqLh9tjk7ofXTcP
	 OPfgwVWbKrrPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51EC5C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 23:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167002325432.13839.14303377981582520046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fdfcbe7ae80e342baa81c61f154f96bdfaf4df6d01bdd5345ae64b505769901
Date: Fri, 02 Dec 2022 23:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670023254
