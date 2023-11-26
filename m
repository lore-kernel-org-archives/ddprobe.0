Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C80146AD
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QceoTg+W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7658EC433C8
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701007096;
	bh=8t6o5+DGXWpQOZpMRVqtqtdwJXJm+h4FKoQ15D5H0ds=;
	h=To:Subject:From:Date:From;
	b=QceoTg+WzGIqz2XaDuw18f5ZEIJbmZIH6VRzu6eP1u7KIDbikLPyN4cHGN+TeysoF
	 2JiYxvKkzRgxAzB2qIq9yiEZN+tIMjSOQfGl6SlLKLWtwRuhAGKXWFPdtjnAL/EvOq
	 ocLGzvYFICIQiGznE0OOTMAxCSCaNGr9VPZhqXnd9wHoLXINtMMJyKwmAxjrq03QIe
	 D7wAApqrj4bv93oSp460PIp/UsDYA5qYWaasFWG7WxveyREzHAurzv+DvO8pMl5A8P
	 5evVMKLbCG3MKTtPm6DMR41Zjf0NY/gcxKQDdw7RgPBkjGR6TpWAER+GjZGurF58a0
	 vZ4OwIw38C/xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BF53C4167B
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 13:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170100709636.13601.5895174553978388729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a994a199705bc8af5be723c4e756d165f71f0bbeeeeeaa7e1bcaca90678d5708
Date: Sun, 26 Nov 2023 13:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701007096
