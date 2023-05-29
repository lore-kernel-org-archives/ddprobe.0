Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A266ADE
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 14:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8696C4339B
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 14:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685371925;
	bh=YpuDCJ+X9FxBBrELcfQhHEdmF//W5n4rsEkMHjBMsE0=;
	h=To:Subject:From:Date:From;
	b=FhcsxTCqubRQoAtTQMd5rZcc6ocDGzPFqKasQYxIeewGL/ozIO14UFpyndYom+m82
	 G2Xw2D8iQYaBdrYB7e23spNC/0q3Q2wASUF8OxK64d1a0X33kaOuyy4mOSu8szzCZF
	 JafWb9Yy7tutawtX6Fg+v3mV0lrc2HXLJun5CFZ8GlqKQ5Hulz11aqybNXuTakpoZd
	 wBuKXw0Bfb3ARY2AE0oHAkHr9kKvs7DOkgTrB0wSRIQPZofG8DWUhZGKVPf4wk6Iac
	 PjRRcwLePtUq0YjfnnPqyE6l753ckdPUGbGHb8AIqzik5pxjps/X7LdfvXK3y41SI4
	 zIN53o9ywzBtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9344C7EE29
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 14:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168537192575.4329.7847919761105462476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 222aeb2d0680ad7669f54094487a3cf881d4f05c161110866fbb558a73c1b8dc
Date: Mon, 29 May 2023 14:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685371925
