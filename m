Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E69C7B
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 00:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF31FC433EF
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 00:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682381585;
	bh=kKec2l7SK46NuGsRsaBbkI8hxyBPfqPdTwejCJRnu7E=;
	h=To:Subject:From:Date:From;
	b=Bb9jyDtWVvCBVm+7a4JqMtZ5/+qXOlJ4KYmrtem6wHIGFe+0667oSMwETKU6w6tpx
	 zqpKR/XeliTCJAq8rLte1xk/mOH1PLv2Kk3/K0cra7GAA6u8ftSm23X3L9BwU7IINk
	 mp1ErCJcRS6i1VVAEWr2yFPx0ZWJ6YrlwbdgFm6F3gjGzBRHZZHq5X7x03rRSgTfbp
	 yhI9Y2LEtExkqZ+ha5RCARAQgmLmWviJBsnPhgBLraslDxVp6Xgrdi3UrlcHh7By3E
	 VvezSFDSbH/ksg+9+44l+4bsy9Zy/vHcdsNj3j3tZscD0HKTVsl8p1g/+QyZc5JjAZ
	 D8ZSbU4vfi1sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6836C77B61
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 00:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168238158580.8664.8928666792780422395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e8fb53ad9b9b21a43a541169288ae8a755d14e18e3e0fcb5724846f454ec61c
Date: Tue, 25 Apr 2023 00:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682381585
