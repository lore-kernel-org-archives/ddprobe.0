Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A972598
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 09:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBEB7C433EF
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 09:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681119125;
	bh=j7Fb7Kc2QrtE2GCKLLC+zS5V7Yym0lPob9fllhegkmg=;
	h=To:Subject:From:Date:From;
	b=KZ62D8WLTXczOHvFz/Hp+XUDG2kwiIb1cZ3ffXKEIAETdrB2/j+/D72Q05E6AG7l4
	 z746zzm2vZT5rpG6ozQB4/OvDLcK86AO2hakWSZlxdguoWBFqKMKM4MDsRnWkoSomu
	 qJnXM/9iXRYH3Z2NPQRCfXGtHtq9tD/INGhfK/zi14VuzgvjwTayykLenvPCUVQfgz
	 oPuxSqmI/wYro4KM2wsC7uGUo4bsVZiT72qF7HADMPlk06TPH+QJqAINiQEtxRFO6E
	 KWzQ1zRFtz79QmtvLYsJnCEFriMfzjj1ZUD6S29tfFP8CkL048zbMcEQKrK4oFSmm4
	 xkysprHDzcP4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD8BC77B61
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 09:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168111912575.18674.10075693768592102512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46729b176255d0d76653375ee6d039bbde001f7c737514bb0eec5e975d7548a8
Date: Mon, 10 Apr 2023 09:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681119125
