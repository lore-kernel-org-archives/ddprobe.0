Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E87F667E92
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="syrMpmi6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79A78C433F1
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705060096;
	bh=afeucvPjMy6PwWZ0tu7ajHEGzpPnY2vD0q/K7bMgBqA=;
	h=To:Subject:From:Date:From;
	b=syrMpmi6U8GWWoSgbq5G0Zife/3wzj6QURUE2MfteSoFCqUzihRTxwbWeh+uZFUso
	 BbYDmC3RqTGVxd9KvvFtG/YXEGaZq75atC7MwaEG19Q/JhN8x3SF7nbzNnkRv6/2pW
	 qrne+HtN5yScxSzwkItZANDmEYN8rmsP1KzKafluESTWQK9Fn8m0Bwh1KruJe3YTYn
	 gNtzrQdD0NNr9dRLAfDkx6DEVzfAmIeH5Q67o55W03jvP8c6OLNw2PbtjnHc2i9pSw
	 5kSh7q1phhWQVK2KxEp3jpacXMoMQHRq0Bty7Wi5NtN0jrnRsYDwmYSV0pKz7O22ww
	 L6L82Fg6rJ8lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F9A5C4707C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170506009638.26555.6993353470494613818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ff9c2268c4cfc05c7ca5cdcb81ca4d8003cf124e3667a45d1211b3c25fe25bf
Date: Fri, 12 Jan 2024 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705060096
