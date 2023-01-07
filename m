Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E258E2CAB
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 17:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 832F1C433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 17:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673113287;
	bh=agSiuWMfmMDC0oWEf53a51H71NGRu8VLtwmbGlKnKtg=;
	h=To:Subject:From:Date:From;
	b=j/KhRG90OxZNSUmB36AXoQSmhl+oc5z5p4ORl66P4NG/QR/dUx9Jp+G+Wo6U43v9B
	 7nVKFkd+lqLQ3kMzHxTst437F6r+joSK8ihnRcrae5Eaxit2zngUykOmq9s+QjI1sI
	 iMteuXmfP/TpF5NLSnsjmkqSy7g3zY0V3hk6S+AF3bEL6Ti3qO9LihKGZsojtAM8+8
	 3q0wPVNVFCEiW/9MTTGd8LFVISBEunDiajq1JSUp3ECeOdpEbePa1nSHPKiEq3mRDT
	 yDCtfg4wXvJcOo+NAUV/ueXhQtkTDhcOps6CPseyUHhh3ST9Bxg+nt41GIE2CItqp6
	 B/RTxAhQo16eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F0FAC46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 17:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167311328738.31222.7202551058770453872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0238bc8f5ae168d11be04a2afbda5e095d877c6f7437be002fa0a5fa98ea6ec3
Date: Sat, 07 Jan 2023 17:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673113287
