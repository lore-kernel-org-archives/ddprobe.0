Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4D472F35
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 14:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79B0DC433D2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 14:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672756887;
	bh=PQIQ6UJcC5WS9K6JLKbALiDOi0jH3Rc64YLJPeC844Q=;
	h=To:Subject:From:Date:From;
	b=PvD3b8JpFck4YOZNB3Th3NsIw+C7QCIuFfwYIIIqe+luQ9WwMWQopB0h+BBvdhnvF
	 pe3AWzXZQ//dxc82HUHrAVjeTfd6NETJYnFLvfXjXultDytZUMz64+lEWw8tqKFptB
	 PE4Xz2f1WnmO1RRUNGq2CCKMv6LoLQcjE1iOiaq2K+DFviusY20j7iWif3J1HIVRzZ
	 JyyDamo/cpvVJy+s11RIDjgbxO6jq0W6W0XOUTvT56mYa8jo6OQ51K2U/OHmpl3Bzi
	 eTQTndv1aXqgFIZX5RUw0eABMo/X4Yg9s04Q702WAMmgMG4BuzuUYBMldTPxTmAsiV
	 F+xg6sqJFhCvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F0C7C3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 14:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167275688737.30917.3944927993766113279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81a9d329d08d3021000f49300a717361f59def48b190db6f3da68d5d99c14788
Date: Tue, 03 Jan 2023 14:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672756887
