Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B999C1C05
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6728FC433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665384053;
	bh=davsjfq+SpWZl2pNs5rYuZ2l+3VBa06iI74aVQsyb4c=;
	h=To:Subject:From:Date:From;
	b=lzdefsIgvvAZqSeX3XKoQtki8JHTT5XbCN954xpckVJb/sH9oum7Hge8O31J6VKbg
	 HloUtRsOsIaLzcYsljK1hAZJaMzBmpAQMsgoFw8BhZEcLPUZh26D8HbJVvzg1kWmdw
	 zorOx91+6Y6bdgH5xBekOWNHVQP2dYTax/vDJGf19SZc7glDERljxpLcRYCG3QAIP8
	 CD6a4QMhWS7MlaqHnDCOjRlTCLGCQFnI76c9xOpEab8+mJlEiNslt/kYvnNrXIFqTm
	 mfGcm2lgWADuXLohtii3XTuWvZNCsm7cX1P8WqZ6mLyqf1BbRDVrZlb2QAg9vZ1+H6
	 u64d36wxv/3lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 510F3C433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166538405332.16340.11929883550688477064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e08c3ad9b8c6dd98077d493d9611dd064a1f72f5c7ba5e2005f945fd7699195b
Date: Mon, 10 Oct 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665384053
