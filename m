Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 663A136A
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 02:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBCEC433C8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 02:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686796628;
	bh=MLPbEbHaBtP+D8NSaankQYLNDU6Qm06h7LM14oGiJfQ=;
	h=To:Subject:From:Date:From;
	b=Zw3IHJZUdyQA0+qvm+f2trGwss7+icSb4ehiZp0elHbnQc/rSYxTalnz8c382w/Ru
	 fb/RiNipILAhFLfq7x6F67pYBK9Oii0zy4bniZqKBTrfQdA7zxaWuTG5V1sV1YZNxj
	 4z+vbeypPuT2iMt1nzmMgYPnwHsSXggVAkM7r553PSJasOnxZf3RelOmja5RlzEMhy
	 F7YNuUkxdd+YAG2hBTkk2Io+p7XRbwuhbcMiTcCmDb0RohyWlwDsO7eAsE6A3Bytsv
	 u0wZO1O7WmQholupbQ0rL5Igvz/mUdfnQZ03AoPezeW3/uT/XwEVhX0EN2jTmuIny1
	 CTAuvm1gOg8Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A1FEB64D8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 02:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168679662872.29861.5365358917378586215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04c3a0181c1bebdb8d75c94c25923e04cea5727f31f3f623ba0e5a9dcec7d22e
Date: Thu, 15 Jun 2023 02:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686796628
