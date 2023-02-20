Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B9C2578
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 10:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6022C4339C
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 10:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676888885;
	bh=bk8/tC974WdvQFRdIJA1zedyNSZWoqRGkeVFYkXyi5g=;
	h=To:Subject:From:Date:From;
	b=kM8vX87XfhnCINof/JUtvewIAHp+3dZ2awpiq4HPXngfofc1Jk/Iar1LOKxA/zahA
	 xYRxoUbrfARmVn2ZAkio3eJk/UHnuNjnfXllDjs7iiU8We0JicDFtMQSLNlQ2doPHw
	 AeVhfK6VRYGxi9HPBTh/H5MeG8Itqu86Q3Wr6uBuW7/GmZIX8HYufcLVApe3vp1lMW
	 68Ij7OiuKvgS2675jDqdMmRSqTNcUjla8jS+vEJkKA2XKMfJ5pPa083PxVG7WxkpE+
	 J+mCMyQoM4lt6bYnKrZuCpvoBz669yZb66IvH13FXDc5W3ztBTmalRr0PVnZF03mUY
	 kp7EsM9PGeWfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC3E5C636CC
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 10:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167688888576.24643.928658472427160288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94298e4771972a573439179aaca87703a2064b38bb27bd1bffc133b2125b871c
Date: Mon, 20 Feb 2023 10:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676888885
