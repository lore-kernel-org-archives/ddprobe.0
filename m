Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6F1174C4
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 19:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D823FC433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 19:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688759228;
	bh=KA78CVHxaWGYJvTLf55EX2mJh1QjbKuUMYZclxvUJEI=;
	h=To:Subject:From:Date:From;
	b=WCDYv4cevjvYKmTDQEXA4adtuEZETynLFnSfyl/pEBigY28PQq/+kQeWNUs2bN45Z
	 pK0p9gI72gYpV8/E40fpWgqkhM5NAVayGeKgkhra636BA3St3avrkZ67H7iVZFmEah
	 cByO1DLBR0ZEnuVKJAPjGNeI7a7XobDrWMPd0j2ayBvd6PvGLOQkR8dlOuf1GNMG/i
	 4X3NE2fMe+wZmmQSgnCHm7HfATaf5FLq4wuFM6ylIyIZ+VVpxDIcRc+im8tEV4LLrS
	 S5FTD7oAAatxcb0wtg83NDAylS5FZFvFPZv5aci2aOtMEPFu9ft6z4Wp8+0493kqGb
	 hXjVFc5yTJZiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B60FDEB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 19:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168875922873.11484.15274920835552568096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fd595db23d56e93dd234693afd72ec5ff6706bb270f29505b73c382d3160867
Date: Fri, 07 Jul 2023 19:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688759228
