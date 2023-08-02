Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574607E
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 01:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2978C433C8
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 01:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690938728;
	bh=M/E17L3j6F/1+peUUT4/g3k40E05j6POPQvunA+A5oQ=;
	h=To:Subject:From:Date:From;
	b=h3pT/l5JwXeBObYuTk0JiTxPh7DfeyYlfGR4g543w++OUJiDh9puOcmfwIr+/BtaW
	 drezsnHWUTY3IRfHMMzWIbPrj+GFjp0P4gfjQTwUFYGIFxdt4+cg93X/cgiTJ0FpMd
	 +LmFHe99Wob2fLwTENeFAutFA6r6fdiTJHMEOmXskimatqCZsZsxtru6IeV53sxe5I
	 vI54geZ2HULaUKgAFQi5wgcerEc634XP9HgEMNqh++Aff8xyb5/Hr4VvG/N5Wc6hP1
	 UzdlufAlDA2JEBO/hw9AgYnAOv/vc4DVSv9aLC+gmJ+rhiEk8F8qu59pocT5+JG94k
	 5J+MB0ve5vaOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A68C6EB64DD
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 01:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169093872867.15031.17926581478309294059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdf9106db30846eb62fa2bf932e9454eaee2b8d9ff70dd58c1c7bfe897f47faf
Date: Wed, 02 Aug 2023 01:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690938728
