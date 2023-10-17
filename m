Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D17B430E8
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 22:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aoXh6T1s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4ECFC433C8
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 22:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697580428;
	bh=Ff/gI+8V9SpEwudfFzKtEs9w6cd31vajw3moPocdZbY=;
	h=To:Subject:From:Date:From;
	b=aoXh6T1sSmF4y05pDyCxmgBvO70PYJhO7L5/27qm3v3TmxcRdr0c0Yh8eVpZPA5io
	 Dc125WYJRNYFaX329RS17cWcqhRZt28HaYGH8Ay/ltYvKLgMhs04eOkOcEh60u1lOf
	 kGi/aztiQmkboO0BiV14P+FR/uXGU014o5nbdhPX9ocU6kl2IfGM/kRiLRA3j5CQ26
	 Q1vAarxkseXMAWrSlc6xqxpwHwyer4qqYWvEQdTQfiIrT/jWsVWI0uXd7vh2P54RHK
	 2oqB//nXqlkJQ9ndAqG2+HXWIQye21LSqjWmiqVGvLC0B1OxBzE94aYAv532SpyYI7
	 5ZDyXmBxs0/+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9061CDB474
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 22:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169758042868.26477.9908491084770794142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3976573fbcf945ad71861a773951441b2202164ad96410949be10f604cb1be1
Date: Tue, 17 Oct 2023 22:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697580428
