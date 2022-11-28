Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7377AD20
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 22:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 848F3C433B5
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 22:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669672854;
	bh=zI0cl1Hrhu57kLcCdEwWcuErHNsBi0mwyNJV5YUCoPg=;
	h=To:Subject:From:Date:From;
	b=J51A4xBa9ZGp1vMFz2nu0vQpeq4+vw5WZHD0klistnOn87Rnm23+1kO1FOu6bGiNY
	 0cvNUoij7XKyueUdnQAroxG1t3QJjoxuheijkG5yCPo9AA/2K5QJPS+/QqShbrnX5u
	 zazqYjG6ydocKXAhYzXhosOZvbIXIaPj/bgKZ53WKJ3xmMU4eXi8X6BEXuJGjtgAEv
	 PpbvjHVNMnlN76Tx+lgmuMP3LalnU2IfMO3yAATRvWrVXq4XsyKwUsyFp9rrdLbVJe
	 7jEorFr4p2VePMIhgPdlcSWkg5Osb6rVj4sNpWO3pbrnUb0lei+LW5s5ukF/oiMmX1
	 kZ7w2vIib5F3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64FE9C433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 22:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166967285438.16058.3335271985519679706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e844ff5c3cf84dc89cd6e6fe3990ecb876750b4213e4e3a04ba34a4ec0b2dec
Date: Mon, 28 Nov 2022 22:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669672854
