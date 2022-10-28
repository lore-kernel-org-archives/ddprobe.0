Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C72D61FAE
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 10:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75313C433D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 10:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666952454;
	bh=zJ0w0caY+E8SF2kdqTO6AUgu+QQ2AhEgldCoDMqW7J4=;
	h=To:Subject:From:Date:From;
	b=O6LSVWJblo9d1IiH0z2WzzsT2OBFiyLaoRCuKWBxsncgM0M7MOmZbmW1aH29lvPkB
	 lWs6S1OVESCm3P7rqWhdGMG77pL4FOTmiSFQYZUCNNckFy9hBgZGIstCaV0tDyOF4o
	 ifh74E0aEi5DSCQWv2/ekGGBz4QBXS7MBwTxljtu/wwy7ADvuXeNbAzfQl0Wlgb91p
	 Bl383wzDlO9KISIlF0NMIb/emoclUWWOv0hQOsDjptdRmzernPZWV+vyVsjXuKEvtz
	 HYwcjtB2RaOkKSfDnLTrOPsWOblsxqIZNWnC8np7ZwKIPxW86KOdZggSWVDzzA9H5H
	 jkz6VJG67QgPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F768ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 10:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166695245437.19723.12535977630012972639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79f5bc0b6ba4353dd1b0568fffaa6492c902d9aba57d6e1ab8832311263385c3
Date: Fri, 28 Oct 2022 10:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666952454
