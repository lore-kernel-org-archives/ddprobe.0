Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58A6B10E5
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 06:37:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC0F6C433C8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 06:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688798228;
	bh=a9bqkAE6waH3Yyntlaa2dz4MvWckfpQVdvaQGdyWO5c=;
	h=To:Subject:From:Date:From;
	b=tfjAnrqwacc2OInjs4zSGVI1SJyCalAjm0BkrSZqunX1MWc15lVg0vhn46xbAf4dW
	 Pinm2xmKDdmiGSxtp6zH6+Y1U/IBQX5vglBaqE5H1sVngIfyTowC55fN5JEngSaK63
	 VmsltzRZdGh1tJAQUhPx5wn7JUPiE7o4mPlHN2xlR/PW64fRXnOm85Ggj3pD6txuJi
	 Cn51MUmr6BNHYb12Y/n8HpIPae4DrX1i4hTcvcRefzO7qIof7a1sy07ZEc7++W1Z6B
	 MoBieUoy3cyQS+0Dn5gHggKKxVbyRsPnr7cNeh2wEWHQpEoZAgJzgxi2eN9C1pq03o
	 74UIuWkYa1ryg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA06FEB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 06:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168879822868.13599.3319871443747674140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e87084867030eaa83f0741bac33f5ff4f5e957bdbf3ef515815fb04e5a12b78
Date: Sat, 08 Jul 2023 06:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688798228
