Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0517163
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 18:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88F74C433EF
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 18:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673290287;
	bh=7RRQH+txCFepeQNYo0wIIG7HcLWAaSpa9yy7LGU7xrA=;
	h=To:Subject:From:Date:From;
	b=g6PU1AwOJB6uCoiQQPnFBndYN4KbLzd09wN53JChSxRGMisRo1dLgQWKVp1B6ZNKJ
	 RVwueoIw4y/OAmqd3lf3nvkF7197PZdtTgrkTRISeu8ccJC5sWMaIT105K0VsyAHLJ
	 1YUeC0LOlMs59bPf8dKN6oroaAjPTdUv6dWedZHSS9TKp6IR2K4nfJVVV2Ywj7mq/F
	 9kNVaC5O1hYa4ArZeyr28jDj/+x7cG/PaGR1GE4WPrq1Pi75RJZKWX3v0AyEUJMIcA
	 pKtoM0IhW+Qx4E/pNjdt9obZgGGgyQus2wfqWz40MVMn2fu0bj6uEAIyHwa3fKYZhs
	 iX/vbqSd9rneg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69EF1C5479D
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 18:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167329028742.30209.15271437375409220448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6665675fd5d4609c3a81d9071e7c6f85173a27e3978f9a45b3d30a4605f70db
Date: Mon, 09 Jan 2023 18:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673290287
