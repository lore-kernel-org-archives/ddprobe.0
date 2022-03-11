Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 899977E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 08:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646988984;
	h=To:Subject:From:Message-Id:Date;
	bh=rfou2nbjfhaV6t3GlQ5dE0hGF2ssSyv5PiUlPTeL2qk=;
	b=RXI+iKeteLeBBZ27x4zRivfl/p2NlgwbGMkXmm4llDrsUsrUEPgGu1k2TzHNDrGo
	zG+Fdbf76TSX0uHVTLmxEt7KmhvUb+sH0WOTKF5m4MlWu43UwgeVdmV0EjPrkjTttdd
	XL2XDgJyyQnbrvdxDifihdX5L6GE2ljJB7Wem0Tg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646988984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rfou2nbjfhaV6t3GlQ5dE0hGF2ssSyv5PiUlPTeL2qk=;
	b=gwBBR5UURWS78cKiCzChbohVMYV1CBJuXQ9NuF6enEIp1bC0M+6phqVC6+7dw7v0
	w7mbAk65Y+hCWc70pbOa9EsemXdTXxeBi7AQvrgU0WhULMVXZTN9xklb8h20PaewLgj
	yt3FVLhCaTHMHxFpNd8qNYIqcvEbcHi2RX050qCw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f783181b8-87c1f819-4c66-466c-b7ac-b8cc62d6a7b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c289468eb11b2835199bda42a787d5a4935ec37c6428f416d09ea6bd9c4e4ef4
Date: Fri, 11 Mar 2022 08:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646988984
