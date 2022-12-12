Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06B011854
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 01:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3BCC433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 01:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670807487;
	bh=FJsttm+oKxPSdMZPWcvPiGKODmQylyvyNLBtM5nQPOQ=;
	h=To:Subject:From:Date:From;
	b=lWXdIxF9ffNxaM2GpvBmRLMHavERBGUYzcWk/lPgR1Cvubu9SZelGHJid8hsnO+2T
	 qdFU3+SlG9m73pzkZb9+itfTONNABrcUOFVFIstTlklzZF6GXxjK6zyd1m3E+9DjWn
	 7fwDgCIm51a5J8s8UJgtf99ocxP0REf+jIZN1mo0ABjjIcHn/KiubkIgL+9dIPbDnA
	 0w9jd8OQFqlRb8h1m9Ycb+KgE/CouZPsdkgomDgHQ8irCG1cn7ziFazl503nf6a8dy
	 YiGRI/fiL3w57bIfZLfvGcUcGE2tQJ/FN7PVS3sm89yvS6ea1jcCUkD3WliqTHCCGR
	 gqDKEoHtjl1Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74D77C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 01:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167080748744.9515.164509591248716204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 500c3623cc606fbdc736895f617488114dbdf7b8bb98d10af26b8f3fc6ac4a4a
Date: Mon, 12 Dec 2022 01:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670807487
