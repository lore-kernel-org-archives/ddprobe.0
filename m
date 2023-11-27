Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185D446456
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYs7qiUN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 905EEC433C7
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701121096;
	bh=zGIus2dIeNwxIYHVorWF9ePAk7vyJY4lWG+3jbcBknM=;
	h=To:Subject:From:Date:From;
	b=pYs7qiUNcZe3IsFeeIrIRHcFJ4sLv/eEQXA/CHND+3maVieRPXGW6RwW5sSEgtHBO
	 w2jfpBJm2QxIFUzo6wyVOWoxlmIcSJLRyHlgrEwpFik1V2P4PT93veuMKNlCZF1Hwq
	 s4xEk/oBT7WeEb07Nat+3jkbBdEgY9+AH870LLMu+limnsj9uJmDRX4extZaQ6EB91
	 XIxBGyXDpNKhRYPQumYNkm0pnA2kuKGiGjKnSLBv/Lu3XoJf0KIOlFXYjbuMIuhvHk
	 /IsVY2CSHUglT5oSiMF+i7N8kiu7dtcbCn09WwUdEu4i9drmt6/da8b7t0O+CMR4Z/
	 bFrtPm/4M1gZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FAF8C4167B
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170112109643.10240.3360046839907573723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ebe5ba85acc785ac5c673285eb2e24c06e2366e2f1ef570ccd79b81c2b27244
Date: Mon, 27 Nov 2023 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701121096
