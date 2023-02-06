Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2402E2C9D
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 09:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DEFC433EF
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 09:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675676165;
	bh=6zc8UDRQFM8KzrJha69+FMXt3yZUO3bjXFxBDpw1K74=;
	h=To:Subject:From:Date:From;
	b=FeQZ9EDCHue3hLo/cXqe8n36wshp+4UpCjvMofCFxl8sj5saPedcaPJrZoMxBRaHY
	 U00VXod+BhgQnXOYKuRg/M93pBhE+e2Q1851my4Phga6G3NJy/xb4l1u2fHISvHJ4K
	 Q+M5ukS7vQJYiJlJqXv5FLRGHQUUDTcr1s2b0tKBv1lmT9uqF1+8jIw0zHYQ+9G5Po
	 1eqjco07+sOp6b7WzIoVNj2Q0oorTURMNeduybTSngL845QkzP1XOWdUNl44X+Zloz
	 fEoD/+XoW+MSV0gwrzbN56xeQQCqlYI6UkNO10wHRqHpdy64qem0rDSZndzxIWCyp5
	 9S+R65hOS9SYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B68C1C636D6
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 09:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167567616573.31353.14999207141025857426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 179316f39df23cc02b4b7a41388036cf8d40e97be6969a82e88d2eefd296f6db
Date: Mon, 06 Feb 2023 09:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675676165
