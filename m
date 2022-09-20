Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE8487462
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 15:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72AEBC433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663686653;
	bh=R4L83pyBM+7K5pdz6R1g7xrLwdNnsOgeQM+OE+QS2HI=;
	h=To:Subject:From:Date:From;
	b=gWlKqlytO1lnZ2Zr2JIi3ArbNqXiQF9bBoS+l4Los4fRLm42h97ASSBG2pPT8ebzJ
	 NxN3/I1qNh7ccA5TgfmlSpuWCJ103zWLzV4VNhOYnNXGzB0ZVLw0CkZ6jV6GE1/28W
	 jHIKKH2I6pe7I2iFNMA5YWFe7ekiG7fEx7Xn+lzaZwelmHG7BxotYyJUKzLLOxnSjT
	 M85OzhvLlplvia4aMtKzT6flPhFuM/d+LdU031vn8CKZo6ODitXho+fEWlNDW4/Agg
	 cT11s92LCaMMt+L38TMFUpXwNXniZJo+NuHMuIBBz+PFeq8LbAdSXpyukH7OpboISR
	 xRziuXIwXwOYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BE8DECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 15:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166368665336.31932.367059968752457605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69185f614f78abb2e9dca8d474d1ad809deb713a760571465fba3185f3635c69
Date: Tue, 20 Sep 2022 15:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663686653
