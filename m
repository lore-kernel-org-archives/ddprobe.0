Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416CC8F5C
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 06:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JR89awC0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE137C433C7
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 06:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697525228;
	bh=yz1pNNOlj5ghiwW7b6dHc+4M1374PS6So8nTD4Fzw30=;
	h=To:Subject:From:Date:From;
	b=JR89awC0JUBet0XQt4DlpCoUOn3sQI61eZt9B89whFqijhxzp5AlXHgUkoHpHze65
	 Puhc5vTf/QE4mzUD/RF+6LawSG0HWTNnrkUAQWzxoiIFsAL9Vx91Kw8Jg7a2jJoXBV
	 y31cN85dcHrMby3ZAAi5ElzcJChs/SjE7H7AULe0I/cTftqAov2NqBmGS/gG5vzsl9
	 v4yxwjnO3ChUW6c1rmpgK6QeghY5ldY1EMs8HzTYlNPUGBeWOu1DOnyX2TFGib9KKJ
	 gIBqczgreZnkp70hyxhRdsYUQY/E9jyO0TN6K9k7V2CttO94Kj5WBAHg2Jwqvs8Bm3
	 OIQ2YsOX6yXAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1C2DCDB474
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 06:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169752522865.9251.16550331368601603478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 256a0dc1a530f844104c79ecacccb5e77d2699544ed00a18181f60b0dade8a69
Date: Tue, 17 Oct 2023 06:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697525228
