Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 072E46FA2
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rAGolIUL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83D8DC433C7
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699774696;
	bh=KNijEB2Ko2KkHqhslI/VmKN7POTWGaE560kIVpCVCdA=;
	h=To:Subject:From:Date:From;
	b=rAGolIULO80DPc20vzx2oh9Fe87ktD5sbw61+J5o2yI6ZkNrKRULKC+uNy4cLa+0v
	 HLVmeDFGg+Q7s88CnX1Xr7kYdYZysqeHxcdI/d3ni+JwL6zPmRGHusDRNAqX+IeEir
	 7F5A3ObwD8OTRjCImJmouafbtI4DNn5NxTb7IH5vnTlJgQk/SzX8MSGsFo/vaDozvf
	 6DhHPy6zHuu+WQncBP9QNidebvc2LJI4sTxLVa7nLj4LUqDPWx1gN8dDe3p2/P8FP/
	 jXHefMRTgirHKcrkz/Qmk59ShVPDYlFPGRCxSdjx1Ul8pwOtWaYk9QK6sbG2BUQQz1
	 x9pdOUlbs6zsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68D5BC4332F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169977469642.10678.792959167952722910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfd97f99c409e1eda9a72c3f8d6ec53ea9f59a7c4d2558b88b0a36c0ebac2fbb
Date: Sun, 12 Nov 2023 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699774696
