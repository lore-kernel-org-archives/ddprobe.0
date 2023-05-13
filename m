Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 510237E6
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 00:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01735C433EF
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 00:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683938166;
	bh=05Iajk62lDxgV6bnKhEbwSCwgm6LCE/Xqrj3jLVQoP0=;
	h=To:Subject:From:Date:From;
	b=lVJTrVn00buFLxo/44oO5JYEH/BOEUezEEJ018inRWvXa31pn0Ips/3Ifk+LwymqB
	 3QK305bNbUHXGxlc9ffVlvIhTepYM+eETQ/We7yrok7oM8dFlOopCfbkXB9DD143oX
	 4f3pJFl7m1N9NLVPwhbPRhNGZSTFwgTF5jrLruVajVfAGdB8QOljxXaeNQMuQ47/le
	 2cKvHDIB1M95z5jowV4JWZo0wCztkAj9OQweYHNXXWQtLnR9Pyh59YFeD2G8G1sFtm
	 wj2q/doBB2EtEgIaNfwEoqBPW8B++0oOWSixJDrc+j7g8AIVf7OJmhwfDe2sxRJ/EC
	 DTv2DfIAG7jDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4DC1C77B7F
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 00:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168393816583.24681.14013612864907350646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 120b2c6f5d08948d44950fa60d952608f41a137d84a1eb5c997f2f523c5a4062
Date: Sat, 13 May 2023 00:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683938165
