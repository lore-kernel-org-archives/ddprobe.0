Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5896E1FAF
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 06:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6100C433C7
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 06:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691389388;
	bh=zFQ9oerzlApTc/9JQk8lPdT/FnT9pxefel5+0yZhhN0=;
	h=To:Subject:From:Date:From;
	b=QSXNW0EY4iv3MA1bLbkSE14UioGNotbhGdJ2UW1e8mJ5m4TooawMBmTCJP8ZY5MHP
	 UM5UOd152jtg7JFYbkQxZRYN+4xwLkQuL3oDBZ8MBdofPNOENVivwQc3Bx6gNGDmuY
	 irQ/e0aR+wsOhfrL1q0ikylZ5PuubBbsrkirL2zoA24VoCSnwJ6IZpZ7nseqK3Phs1
	 UaF9/Kr9VFY6JLhNuGS8c/wKfDrbhJO2MpTnJgEvOLqf8b3SDBC5NvKwr7p+yw1Ki9
	 IlSwz/091QOajGVhgZXJMNCMSloWsoCpBadIY9sz2IVNty+NFzNx0iI+yV3axKLsfp
	 Qufa59DT7RJug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8967EB64DD
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 06:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169138938867.21367.5084501229791840047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16dd97146ed5ab2b6780605b4988951ca0587a64b784486c12956dcf8103ad12
Date: Mon, 07 Aug 2023 06:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691389388
