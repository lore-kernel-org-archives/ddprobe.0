Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A517481
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 20:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEA4FC433EF
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 20:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679345225;
	bh=gBl3IRJg5MIRlJzMSCr2Vwo9fhZ95yp1zmuCo6oRfBA=;
	h=To:Subject:From:Date:From;
	b=rto7ZG3mmZctMxFyoUhQjLH5oSWlxL5/haNf8Vi+kSGv5OFxTFrHYRPRCU8dlT3rL
	 19PCFbNUUFXoiY1wEfjAxSlXjU0B5Sa58V2OOiyGjM2aflUPHY/C1yHVn20e/MN+ql
	 v+m1eWbl3IHYb0+KRXi4PE6iCKzO4IXtVkYKLsZyCBiX2OvndWLTHD+YZGBnyMbouQ
	 qLSlfaQWWnTAYVA9EF07bjUxG2xSLX5zhMdeclO0hvpnPWZO7aQ7av6nSz1PnWFlre
	 pOCeV2qtjamcp0bZobAsOdhei4EtwCnG9n/ZfD1p0imNyOMI9kxOfRuqN7La/KjnRN
	 74v6c6zlsZL9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1450C6FD1D
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 20:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167934522578.4829.6534113894288930564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0323882a159aa102808426598336decdb32ab9cc2128eafd9cc86c0abef38bc
Date: Mon, 20 Mar 2023 20:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679345225
