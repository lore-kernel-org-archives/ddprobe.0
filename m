Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5BBA1FB2
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 03:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B285C433D6
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665373853;
	bh=bRjjZhepxDZS+tX1cgye5+2VqGCYlFeKz06OVyQeRRU=;
	h=To:Subject:From:Date:From;
	b=GIhV0XE1/Biz8o7VQcij6DIcZdqjnwleoHW/Zri1tda64n0Qja3kLYUA9cKDitsYU
	 G2XLpXNPhWAnP2GJZraJvTr9kkVOLSs7t1UE7YvCDDXc3SzeJHc5OVtPZP7VdAr/aB
	 jrNKOwCVqGT8JopRgx10jp9Oi8oGDOAvoxEBynKHCqHXCUeZQS2KNUerXwsJebzGs5
	 cSgtL8J/VK6MH35j9XCc5FjzBZ3lupNSFuTnZQg786kX1IgaEfS3evat3hq84UQpRW
	 GyNasKIQh5usdDO4AnsLj3vgVFaSrBSQXUL6Fw+gU3Kf7NK28llMdyoq4stVLPwuoU
	 0/LTR7muoTdFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F0F5C433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 03:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166537385331.22692.9067516494777837167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 279ad84793f8caa518af93def9541b76053a00ba962c686515c2e8380129ea46
Date: Mon, 10 Oct 2022 03:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665373853
