Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70FC146A2
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 08:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E833CC433C8
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 08:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688546768;
	bh=aLnqLnYPNHeagbrlmm5Z850EOjvDJ//k8LIbdGUHFgw=;
	h=To:Subject:From:Date:From;
	b=JLAXnYgfvYn/c5atKPRtjExPN+1e+T2aSzSu+QTW0PHnVGcGgIMv2pi6TNhBqanMm
	 YLYeDizU+drBLuYaE/5gxGTJLT6P/0kzMdCA4DIOFIM/ZquQr3gRZ0yQwlW/OTXj5j
	 ER+BdKGf1u9RXRAWPxaKEUO1TKaIahfJlVgUArLwVYF33KdcXYz9L4KYY4QkFQyibU
	 u+3YP9K8RkHDubydXXXB2daRQLxjMBt13sb0HY7g1LjZ8LOHvvjPugBILgQmGOXcqL
	 C+5VZuBkYml+gcgiAKOb+OenweOf+f1uExdDw5gaU881QqfU+ozvcDthvlZfbVKDKZ
	 wYaIHkmYUvc3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5BB6EB64DD
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 08:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168854676879.6753.14840501379226413787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17f24d86340cf9d46c88a0a68ab756e7f3c1a2cc55e836fec993e33c25c0482e
Date: Wed, 05 Jul 2023 08:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688546768
