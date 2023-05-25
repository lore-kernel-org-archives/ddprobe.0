Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8075B19BC1
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 14:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0D15DC433D2
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 14:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685026506;
	bh=tw/r/+BqiljDT1OGo1TFw+Fnjtz9bv74rKC6H1Oza3A=;
	h=To:Subject:From:Date:From;
	b=ohKSzGiQfn++DEoVBQvrl/Sg8SqeOYkELw6+qMI9CIQE5knvdAhf1cS6JAlg0iIkQ
	 F4BJ994h0zXolLw0yRw2ykWm76W778PkRyiyTWpXA/4t7n5Pv46jo19qn7Yr44OrZu
	 0tXI7RVAkTIF5WUI0i/IPtkScQfj8z+j3moDCkzYIvfGVPndT+sQL4tNp/nxQHYSMx
	 yFl/q24/9iVaL68JbBZCxFHHpaG1KCR0BUipxpUDuRh8QXuCjr7Ev5ncUJAJTFP4P9
	 wMvnoNBeH3sWG4HVSx30C4Ah0+gngIEaDGZ8mn/WyGu0U8DdW1BteP1/d2H3Dr/WfV
	 drbTTXH/bEYiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B98ABC77B7A
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 14:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168502650575.21696.5892674176546467965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12c238c1ec036dfe14d1c3345b166b18de0a8ea39624f6596af35f0c87d79b82
Date: Thu, 25 May 2023 14:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685026505
