Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBD11170A
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oPAxy6eW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78E9DC433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704598696;
	bh=Y4Nn+e7PkPxnrJJLp5tm4XW1Rcp6VKAJoDampqsOXMw=;
	h=To:Subject:From:Date:From;
	b=oPAxy6eWTfHzEAJdp9+Sqp66RXpLMREzsyuTzouxnQyiDEI6siKgq7AGWYmI6tIQK
	 kcAqdlrYw7ekGvhWShxbcFwp2vfuhxcFfbnmqA8/zken/hr3ZRtQtCEwFmOZXw7XNK
	 NJQJVviz5zVOXISPEgYaRNru0HwL04Eny71mLlexmrp0xgKHr1HLqruWppMu3sMwdN
	 f1R6xuwDJdVIY7ET+gNf3BqJTe0KUVbqRh0d+o2Aq9mLIzFP+rutAHyayVd9PoZsV6
	 0bMSXMe2x81Y/twUZaHoVlfsrw/VDkNSD/QVmRt0LfOt8uMb9ABo6SPQhWOIpI0LSQ
	 nzw/6k3D/JRZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C9A6C47073
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170459869637.22701.9930666049373114689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abd631317ff3a2e2e9152433f55ccea30118c3b2e6359da5413e9c5927d2b909
Date: Sun, 07 Jan 2024 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704598696
