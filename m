Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB1D017D7
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 07:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A898C433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666337453;
	bh=LjmuBK/P55WzxC0Cy54c6vzI9tkhZOBni7YBtVcOLms=;
	h=To:Subject:From:Date:From;
	b=NjdwV7TW6p51PByzSsorfC/aj3axgftmjyt7mxJJ5FY53r151V9W9rFZD3GmwLET4
	 McfiqEwXYeX6BCQaP1cykNEiT1V+HR/bCmyVEK7BZvkAcRM/OITCgbOXlr7BOE33iC
	 stuFOPb/ck1+knZD/QRgmSgiLFIqT1mOzfrsEEcPE6/i+L0hMFCN2xCHh93F1nbwPh
	 0BJ0YN7qxAqu60eyFs4zj0WofRf1ZC5ZcA2HJmnmJI1uwaI0ryy+7NQJvUrc0+8414
	 3uEGzervCV/F50nHC5/Md5khqCD/KIDbem8mDL9+JeUOUgfLmYbxkTF5VGkBjasjdZ
	 +kovdluMrEqLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5162CC433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166633745332.15297.11989683366094496439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03000b6387e44cf35f43435f7e602bc7f5469a2b27d52091f72c5ed45ec1e7b9
Date: Fri, 21 Oct 2022 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666337453
