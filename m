Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1DD45957
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cp3ADDT0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9681BC433C7
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700136496;
	bh=FwK+tgMIwntXvD9LLkd1u7FfJCPV+mO7+WdX2BbyAfE=;
	h=To:Subject:From:Date:From;
	b=Cp3ADDT0y0HCn+w5z61ldZLVxlGkQvPtTM+pcpOl22q+jiyxph7hzwHwSNJOZK1va
	 ZeX4oa9+xJ2UWPO86lkB5DnkUaPLkdrJX1Sp4PsehymSoIdzHH9Lx0DkmfBKWX94Eq
	 xNE8y8HaXZuTocHCog+fFFrZyB2F6qisHotWwuuhwjYR3G+botx5Bf3zOPtHF37x9f
	 bM7DNB1YpM1uPWF9SLO0q6SH0c3vYhuQdAA3734y1YsftM/PTKVlEaQHBQiUEmHA/P
	 RkexvHWu6E/g9GaZm8DF6v9UXyA6HUP6E5nwgtIZHcs9GHDFnjTEQ3syH2z9yAg9GK
	 jWguC2SijC3CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 786B9C54FB9
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170013649648.9929.2755402935286929896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db6f51204404d79a28cb79321d3125067cb61b78d405ebac65603696bda949a5
Date: Thu, 16 Nov 2023 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700136496
