Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CA397B
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 22:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05600C433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 22:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679352426;
	bh=uIVNyuSYsz1aiIDk94NBu9OmrNQc4Vs4I+rXlZ94EqA=;
	h=To:Subject:From:Date:From;
	b=ksbfryvkZdNqUUN0mSS72eKDpLlkIfQWSza3n/ImirVfTPp4Gwm7NCY9mfWng2X17
	 dYR8mve1fUPEO//XXUGPQNLGxOpkDq7S89JsQriObcehxiT6bn8xDRxjV3m3BsQrOx
	 3QPdzDQmizGsi+ddBTSUM/dFxFXPFaodTE3sDohuGfcOv2olNkmq8EmURHEwHmAzfR
	 ZhYSJuUjKwx0DHqzSzWx1kbS9pfyTIraWvpDvEQ+Apn0h2gzp0/uJe/R+yPU1z+hWn
	 rnI5FCnz739Ub5Gqps3e5ee18PD5tw84uaoROsuHNUfG9q/WqK7x0W+T+sQMY/Qj0O
	 FzDHTR6DIn3ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D44C4C6FD1C
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 22:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167935242585.27060.16117264504629246544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ab02ce9beca6f0d9e9c2064e758ceaa63b788e32e41620fbf2ac96348435a7a
Date: Mon, 20 Mar 2023 22:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679352425
