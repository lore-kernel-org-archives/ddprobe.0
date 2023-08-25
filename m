Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58750A41
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 04:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB13BC433C8
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 04:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692938648;
	bh=NXaAUCqdQWPasp+feLNbe81shkLsy9cbA4e5pQUjVoc=;
	h=To:Subject:From:Date:From;
	b=ljZEAE15KAy91DUoQuy/DlXI06W4Og8f5VO7ayBEk3cJKVjzKYf3AtCd6jfRS7SMK
	 ekwKgvv1ywO7N8Bh6p5hUGWOY9jV+aIAsDxRKp5QbQO7bnItg45HK+Jhle9Cv3aCTZ
	 p3QMN/bXEcLIsCRzCgfROCGraPKUNPYvZB0huqr0KuKsJJnoX8/h/CRRKrFDiJBL0U
	 FaMSN+eBVUQIcV22CoiKowUqUq4mEfbBT89M/scUSmP4F3NWApYF8pWvd7N9nSx/D+
	 x2JTkbE+88KTXO4awi5yFl1oi95zuxi73I1GUmayRAU8gvzszJs8Ukr3nIAp3BWhul
	 Bz27fbmxaUOaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB61AC3DA6F
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 04:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169293864869.25826.11706785611902902272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd957a5d5b81cac1892966f88c25d53a00cc3ad1265e2487c018af42c34f6ea7
Date: Fri, 25 Aug 2023 04:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692938648
