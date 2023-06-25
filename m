Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77FF163BD
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 18:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2ECEC433C0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 18:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687718588;
	bh=0oHB5dta4mSbdoB64sa+zMAUHn54awgRpssRzJQ5TJY=;
	h=To:Subject:From:Date:From;
	b=Og4sBvJRLr5M3PlcbfskPUAxiOebfO61BvU4YkOhV4qg3JockQfvcuXZp/RdW0djq
	 UmfrR0jNGHRyZaPRn/872NXVZGyWiKuTojSS9+tdvjeuDHR6kn9GH5pUUuJQy78YCd
	 7Y7jUpD3xJzWOAWkrvEDNS/xQNKk8jw/eTM+mAtUYsc0BhrTbSOeGzwOsAlfw3Ts16
	 JkvQmD2RD+HR0D1j+VGVnjnvvR0d3hVHbymgfIJBpZnNn+O8k5ZMlo/fDbr1TuoET1
	 Cuete0TXieTWgu6P0gYk3nHJPv/6oCPRvaxKtGWkcJ5niQzhsq2oExqq+2jPLQrLd1
	 iR7+yOL5maBEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5573EB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 18:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168771858869.7873.5588793623581574972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7e5ea5aedee283e00873a6cedb1f7c2a1997f9c19bf2da5b45c81000a2ee767
Date: Sun, 25 Jun 2023 18:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687718588
