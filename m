Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D71FA3D61
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 19:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C2D1C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 19:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671908487;
	bh=lxQuRWVlvyxRSPAa0ovN8NLNUQ0gjx8Z/W6OYMYGNpE=;
	h=To:Subject:From:Date:From;
	b=KGUf52uzhdbZzCI7JGMO3+r7sjZDYdej9yG/+6ek2NJwGqud6Yf3BIJgT+ao17Rk/
	 ifHTH7WV+HSIPhSuo4G5nVUmInZ0rWFDlvkSBc5SZTJboycbVaJVO7pD+ZEEiNRahO
	 SDUDxkxizSlLOtoxKNgvGeovjLKGv+jmx9pyaRyDooQxiMQRnG8tD+6GawJIhoz+5d
	 revcNQv7GF1n7Th8t5RMoF6Xdi8sOPbaPr2RjJIrmG1XkPTabnOqwh862Xj+3Pswhc
	 cMknh7or7FY2kpYKZBPWX90tcxJpAg2rQKFpo0H5jw+7q/IX+uCsMg0BWtJovLqF6c
	 Qz3taxXA2N3gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62182C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 19:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167190848739.14676.11867033066068108014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14aa4f81fc0658ac9b7834c38df69f7e2113e3ecd89eea10cfe2383758cc3a62
Date: Sat, 24 Dec 2022 19:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671908487
