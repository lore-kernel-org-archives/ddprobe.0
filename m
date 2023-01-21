Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 752C07E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 07:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1E185C433D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 07:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674286926;
	bh=tSViHLyHrxMZAU7ei0V1x/SYYOEMy2np0NI5oeA7xHc=;
	h=To:Subject:From:Date:From;
	b=D83IH4+YR4TJ5RRW+ACyEifKL8P7oHloIbPEJormgLqMCUETeDwUReSonP8zRfcI4
	 AvwDft+qW30VTxm4bvkJMnTWpK/XzLoSnzw1YtQZmrtur90Ry2eY9HlFRTT8PBz+IL
	 ckAP157M72eI75L/38O2ADkeYvzLL+1ZtJcpK8ajL8BwARAJxEpau+hdcgLyD4hOOj
	 qGoHDLpWftMvQO7l5NjorBagTA4U76sfdqG5yotxhbZRTRRVF3S3HZA8JMC8WmACBD
	 n7OgnoygxbLSN2Wwoo4BUFKMC1TJgWN0LB2ihH3hGXSJyq7AcjS8E58RF4wZ9PPz9J
	 eiIGs4Loj3s6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F26ECC004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 07:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167428692594.23032.6022807418898917653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 559cf0763752e827a7d038837b9dca7a7a8d517fd7667b4f1328631da9a7cea4
Date: Sat, 21 Jan 2023 07:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674286925
