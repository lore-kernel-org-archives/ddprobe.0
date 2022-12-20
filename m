Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD4262584
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 14:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 790BCC433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 14:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671546087;
	bh=kzGSdBpAqFWmdCF/FousGFjqp/ZhzRGLG2E0VjrjzVU=;
	h=To:Subject:From:Date:From;
	b=ADr+wH4sn3mzk4/wVMKJO8aUBs9whCEB3mX649o3boEeFwEKCb8V+1JiY0up4GaEg
	 AAd9971RlZzzhznZyFJ0vGfTD2ft1lmm7XRTHmVbYQRiWZW/L2bWmSnBHjeX4yzwMy
	 8igcp3/pBgM4Iirp9eEVAzIoPhKf/w2X0RS7HJ+LFvvwye33+r+I11xCF1v7OxV06p
	 sEB9d79rBmtUScFruOzUGZ+QOq8QBASzI+43v9ChF3r5hsqdOuqcp/nU8mDvIXj/3I
	 xyu84NXpTqC9CLJ0Z+ib1qDRQ76JB5D3fyK3Zmr/P+Zl4+B8S/LImrrmO1zotFJD1o
	 ZfeAnIaYYt+gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F71BC4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 14:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167154608738.30608.12936240893653169027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 119224ac9df70f607fddeae80285aa1f9323e8dbf46d1111501981b8d1d478fe
Date: Tue, 20 Dec 2022 14:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671546087
