Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5C0C612E
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 23:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FBC0C433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661903453;
	bh=F0IUlNydmUg4BL8fAz0XviGbDFU2cER55OB2oOFMXS8=;
	h=To:Subject:From:Date:From;
	b=tnOhPyknzpVg+FR/JLqgjJwIgzPU1k2pvozt7CorCFvUUvydT9RtGc86ilrAQR6hW
	 +8FS/N6E128QyeoZPWLIhngfqgI0fy2xCmG718Dnk08p0JqepGbtCBZEJCC+JCn6Hd
	 e8Dfm77jdLgMSHDjU29/D3PlJrUkcsZ8g9dP3jSbcHxhtOohdIsK7QpqsOk7/nvB/L
	 ZNAVyHTy2ZFot1RXU0AvKbnMjFdg5kM0i84WhAgU5dhxqij8a+U4LyiJ+Gn0S8MZUR
	 DSjKM+rlXz79skqcuq2iDq5wIyP49T7hxlCBBZpHaphYRUEXNkUUBWx7eaiGQ+7tKr
	 rei8JAcazNYkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5419CECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 23:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166190345333.27168.8339437644138836790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2193a57e0e7ddb4790debf301580ea8f639461807f434043497cf711afd4259
Date: Tue, 30 Aug 2022 23:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661903453
