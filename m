Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC3BAD43
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 19:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D757FC433D2
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 19:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683575405;
	bh=4VJfIXjTTcEGfe7ktBPck33AUgfBExb4hjvB8wrZ5IM=;
	h=To:Subject:From:Date:From;
	b=IR1Biw4t8VU5MKw69OuwMMNv1UqEpqaA6VwmcudcateBQQQUDAR5mK8eCQxuGshLG
	 IcrlaZU/0zKzUqx82cUUWBpQVWNMbBex6qpVIe6nRdX3Ksv4gYLn/aykJ4Ud6tIZEq
	 M56uBgsX4SHZnThGQ2eRwRxgew2ClGld3OxSxUHqwwNrk7TaT/UFyY9pJSkoY7T8gT
	 zfF2A7iLUmz5NLrxf9Gw1LK4RL/ZB98AVyWvXeyUD0/kIYz03MweWsxSOvBmzfM+/Y
	 ngoolGNmRGfqUOMX0zcJcnA26g8jN4MD9M9Nqh+QR801FCz+uHcXomM4wfiX58jxdZ
	 86i+uqDuoUGAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB0CBC77B7F
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 19:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168357540575.31229.12080533778034205395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a29002df8eb229b1cd431637d3252cfc6290ec868ecc7039f171771cd0d02d8
Date: Mon, 08 May 2023 19:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683575405
