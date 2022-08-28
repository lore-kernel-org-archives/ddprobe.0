Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2520538C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 23:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8210FC433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 23:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661730652;
	bh=ps8AtomUUTcg8FFeummSh49CyMF2UIQ39Qo2TptMJKU=;
	h=To:Subject:From:Date:From;
	b=BiO1wWASxvG+m8lckLraqQPkSFihgkiW90qlB6GiVgvRE/sdU837WbnJcIq6s+jFI
	 lQx3ysdaHR5MPVfqoieV/j789hG2sic49zKzf1VaflEvjqytGoYjAuhw0xztTgtP0B
	 sfkLPrn5eI2v+JnYe03cqXPVOietOKSrHGDN7qxvNqxAbNieyUqt9tvzkkuhDeRkim
	 6LT6gJ9CDEBk1+mlgw7SHbCsRlFMUY4H2X9SO7H80ni9cGqHTxwp5xc7YvG++XP78P
	 aDXXWqfLzwBBnfaXK0C4f+6Ep+jzx8ncYZJAAZWm3k9YQjPRwhv3yrXLV7u0may148
	 Z7Zu1z2A2+wGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 657A0ECAAD5
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 23:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166173065240.27949.14704408494581060929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 326edde3df74cb1c621fb6d34adb47543542fbac61081408abbe7983c4d86894
Date: Sun, 28 Aug 2022 23:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661730652
