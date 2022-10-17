Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE4423FC2
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 18:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E59BC433C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666029653;
	bh=bYJH2L8N5/kNP21tLXzH5NKX1WvpcWNe/UnffOSr9eM=;
	h=To:Subject:From:Date:From;
	b=dxaOWZhGY0nRYTcK/vW5zF0YmgJro0Xf1+HfeRBuEmIyi5laIrQkVJijJbCbUWyLY
	 Y/GDMnlC/AI3Vg4KcN4ywsSjcOKrIdEGcusGfyQ/WKETm+sA+f33h1lLSx/9Y9jdZE
	 1tL6ru6nfg6URoHtakwk9w/p1XX0M3JBMsmiT3i5nxN4knYkiYwNTVk3SHpDEIoiuq
	 kkeFoAY1Z6MUpC/QHk1w3TnBO00vDUxhxZ0giW42HJC7noCKvU78iUTu8QHUk6qE1P
	 FtFXntZ0QZozCNNyRLFFzCRep/Oabq463utR1diQVJ2SuKxJb9EezZmsXbIzJQ2Y8f
	 o9BPm+R8w+Yvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 562BDC433FE
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 18:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166602965334.13590.1100486522690815215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e73ba1a4c0adeeebfe0384aaf386abb29737ddb097da033a39fcad3038a8af04
Date: Mon, 17 Oct 2022 18:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666029653
