Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B70C137F
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 11:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 953EEC433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 11:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673005287;
	bh=IFyg2uLwYM4WYP5dKtV4tPjEyKsBBmPORwses0ubh6A=;
	h=To:Subject:From:Date:From;
	b=L1cuo1lrOBrB3ePIXLtV4K+yFGA9b48iRdxdb9F0fwsy6mzvofO0/lywNVmKLy51Q
	 GE2t9zaWfQF19T1KjQ8ivNGnAwcO3M5lTSdPycHdThbyBgWlUgEPxsWMwfWdy/nKwE
	 Vq/qnYwlcJZMGNyqBHKYNz0IQ03vnaYSIfv7jbzVaG+VdHWuH90spWzbc9rv0T+a9A
	 sCC0+aH//t+qWlFb5tc9BSE7iXnVIhHsu7eUmrOhwZisYnND/9vjxj3Pt8IlFFeO4J
	 k+yNmlY6OfZxVS+fk9CJxnY5e/xnluiuYRzTd16mS25ZO4ald5esAO4ZNCxoGYJanS
	 LXIiRu4bVvxgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74049C4708D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 11:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167300528746.13828.5993627370960239044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64201c4156b17edfe9c0f22eb1f8cae944a13efd227ce1b785c45fe6831e382c
Date: Fri, 06 Jan 2023 11:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673005287
