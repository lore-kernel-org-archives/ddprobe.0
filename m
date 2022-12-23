Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D457717CD
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 11:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E712C433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 11:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671795687;
	bh=1Iy8b5p2KPhqOyZR4b2nFF7eSnqYxEF5FoBHpz4N8j8=;
	h=To:Subject:From:Date:From;
	b=ajHWtnNVtwRS4k4GyKtMj9zBU4GJEpOyImArY1k3MBCN9EYvarkPlHaLoAfqR+wAc
	 kkqeN0E4AMvzxdX+zhL2RsuLXbuBrmtEenDXDhpdQjI+510sDiUWsOS3LrYi6P6z/w
	 2JHzRbdik2Z1hfbDMAK2bz0zTG3gyL+Tb+5c6usX8uBWpkSVleG5nza2zYVjjHP3mB
	 ZOblJWjQVJU8KZzIMWsUC7XQ6SDQdx8ffHjNDGwyt9kust2EWac2Md8cAfp1YDudjB
	 6v2531br86ncRxRo4MYnxmkgAMPHmX/o+1+jndoaIvt0iLa2EedowFhHMusg1inXk7
	 xwgnUT9QR+4ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60C2EC4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 11:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167179568738.1197.14050879519284805702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbba92ea888b7ec8f55c0d67156a83b9ad6a31a1a77b5b4cd5c5c8a989690fe2
Date: Fri, 23 Dec 2022 11:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671795687
