Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D485161
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 00:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2DFDC433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 00:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687824188;
	bh=+4GPQl6jjNdZ2sltzCdBRDGW7nFLi/3hNWSEqBvRI1s=;
	h=To:Subject:From:Date:From;
	b=tfru3Tw0Sh+HCHhNZoV1EgqbJQ+1XuHGOMiO9xK5bWpwobO40mq/qoB546Fw2Cac+
	 +xQZA44l5IPIrjvbooN6a97TKCk8Xjt3i9rm8NVLVP5V7A+EkvK9rlTPsxH6XnlpuH
	 eNlCOiTzdyyJczcw2Mge9GMGKrOvWH07yArnJ5TVkKyRU9DdjgWIUz1RJW5uUvaOwA
	 KtMKNG512zJEj6yOt7mndUgnUlgbJpJ/1Y3bF33qP5ZK0IumHwJTgSduhtDI7J9lCO
	 esJddrKt3X4LxgiIr375k0E5u7jBDmmm/4yEPPzlbzxBVdlFDQ5GG97b8Fdpnt28QZ
	 v3BEYnT+uPYCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95DDEB64D7
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 00:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168782418868.31231.2858604144916669883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 519e0759f57b95087dfcb469cadfc7d053984062889e942a9f55803e8f9a03f4
Date: Tue, 27 Jun 2023 00:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687824188
