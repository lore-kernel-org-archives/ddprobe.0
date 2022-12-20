Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E06187E
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 03:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88B6FC433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 03:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671506487;
	bh=UJYK2M/Q98vxVEfBsEod1iK6gLBxpPozm/RgvFLbnXw=;
	h=To:Subject:From:Date:From;
	b=VfEJNTem4mg+Gh/UWuJqnhgFGCpmC35xsUPkQU9JGTh3sxkb+VxQ/7TAq01S3e4p0
	 jxXH4NWilSqKlAUegJZDplxjpbbHgkLVie2LRDVz47Q8NzRQfrll+6WHf/EKnYPweG
	 gvr2y3TTH0jxVgwIANvmcc/4rd5gj+VtbdAh7Onyy8bz450yJvBzX6R+AOO2QiY/z4
	 FOfNY1U/6HrAaWXwSsXDcZNOha7vpG/HxoWMTMq1+Y31IZ4O4FZ1RsRzqhF2bR3vsO
	 dsj3E64sg0gLTGdpcroMDwguEpz/CUowxzqy32lhmjuc9G5DgQt5dKyOOcqmQ4p4l1
	 3p6NGBHBlIo/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67F3DC4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 03:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167150648741.2295.2373067467497405338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 426656b3228b859dd9076ba3d47d14778e5567cc48d6dbc2c20c61740ba14387
Date: Tue, 20 Dec 2022 03:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671506487
