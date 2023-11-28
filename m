Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160521103
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 00:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q3hdqFkI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 874E8C433C8
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 00:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701133096;
	bh=iRrf5EhvbxnHWfNhZmdAMxi+l+XLREGoCOKxoPByqbk=;
	h=To:Subject:From:Date:From;
	b=Q3hdqFkIcB3oEU1xSmKLLkVpGQX93sBs6pxePnayJgfbOCl7m8wgvsNF80zE35WbR
	 wQzMyrebxMY9QUHIoaHwbebs7CczQKKyegIfEG9uUIOzuiePoplCb9rrz6SWrcuQke
	 5LbCCB9jPuZez5UPnfVarPaWgLJf/1yI4n4SLrUtxN5uMTrXQIW9VMOflRm0Smtbjq
	 bf2tKXNfaQr0HollnRORzyiW/pyzHZXa3I0+Z7oni7PJPY8A0//g/tYAhjhm5gnnLb
	 5htJ+ht/Qte47Fxgkzwkh+wjFFRnSkgQzBLjGNAxXeaiXli3bVjwbBKRU2Pzuq1Yva
	 nDFdi8My3J/zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63579C4167B
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 00:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170113309639.31924.2307123050141123597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41817c9b5a9feb0edd7bd21663816ee2ca8da778a25cd6938e670e53b1b70aec
Date: Tue, 28 Nov 2023 00:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701133096
