Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C06E12F28
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65694C433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665950453;
	bh=EzFxLRF13jhDS6kfRjiseTj3Nj3atv/XUYrQeNDD/cw=;
	h=To:Subject:From:Date:From;
	b=gG5flypwt6skuf1QkLHby1UYHGgl5D5xQSd/4BNVepW5nRhItAsNID/vJE3Jlbrrq
	 HNEeeGoeOuYf9RKBfd/tbaLUrkmAUU4fjoHCEarPNF8W8lhJEOES1/PvYg/C0xc2xR
	 9IProrxseCojloDuA4K3GIiBoYVklt6xZPL7IjRLH0kJ5ft5DwHzNfGTAg41qXosct
	 xZLN5JwCJV0OrDKtxMiY9OtLZr/QdUC9DpzjBRkLP+XZbT8C5uQdzbD6H9Afq+D/fE
	 uEdwVsUYa6tgHvo72fgU9/QA4J4ZKS8eRXbUWMqzv4gP27nqOzXh2KPDYxhtlaNpok
	 4cya3eUfU6SoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50841C4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166595045332.1156.1831205834936050110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0de25cf286b1ad4f4b134735ff2ce275d5eeee60d5986daf7eabeb0262e1b58a
Date: Sun, 16 Oct 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665950453
