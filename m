Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6222237D
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 02:35:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4EFEC433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 02:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695350108;
	bh=MdT0gdkzhDFWCXzM04j/1zhDsLhaXGHeGrda2LHvk4M=;
	h=To:Subject:From:Date:From;
	b=WsvFnH/lEGFTZXzAiKVZwr6OFaGyoQnqLe9/fBoi8DFKH3W719PRef50qLRayHm/D
	 fCSpCp5Uv212pyVXe1pMJ71EBEufPXaWO7t3zuiUmE1qXh5ah2vR61DssQi3IDvBZf
	 hZQ4otolStzYA1/H6Amj1SBLbN0/60eZ8qBtOAA7umXdcaxaeAaAV2N2dNrNoXU1pe
	 YMm8VMGla62Fd0oMlX865uZzx0Pj+RzatX0/tgdjX5H+Gbiw/k8Mh3z86+rLlB1/t4
	 hino8qDlreUz4+0aZCmpe2wDEEFZ8toAR40ErHp9XN3YhFy+R5675eQgtrkhhc9sgI
	 /BsbBwaivQqEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06B2E7D0BB
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 02:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169535010869.531.10502053138570695042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fdd58059a5787002b68b96c30f61adc9416760dd800e664c0ebd2c77e237831
Date: Fri, 22 Sep 2023 02:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695350108
