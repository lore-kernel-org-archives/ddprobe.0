Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 014D410E7
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 04:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88DF9C433C1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 04:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667622654;
	bh=+nL2xOCOYxnSpWIfuqtcY8Bg61ghXTCEXvYlcdm6HQo=;
	h=To:Subject:From:Date:From;
	b=mH4zcmwfbG7Y1P/nRE+V/1zg2mBbxxNkQdhcIyqtW+X4Vbw2S3sjANlaDPK7Su9rJ
	 rptu97D4XAzCF9T2DsxY1pwyAS6w8csXfUptn96dYIKnoU6CRY6fVxYKuO8GkArC2o
	 rx510dUKudcbvc2589poFsmmbJ507jEsZu7nqBwKIGoZOvzAE67+yStNG4TQzeJnag
	 4ViE0m8Y/8qeeLipfhCPLmq0Ee+3+u8pNXjVVerRlUnbffLv2AT0Zr4GgSeOJbyVaF
	 GLotFsM1m5gB1jWZDFKrWR9yHG47HDn4UNkgNYGV50FiOf0QSXXxqcD7NunHcpf2Cr
	 6NBujNpppl9Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6921FC4332F
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 04:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166762265437.20970.13484295908574021043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 971161caf008ce05b1ecbfa7460e1e79d851eed28d213c68fab310bce2180992
Date: Sat, 05 Nov 2022 04:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667622654
