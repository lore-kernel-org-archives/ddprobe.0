Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFD483C32
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 14:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F01BC433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 14:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669645854;
	bh=AZtOFs9xgwVj4oi9/wUkybgjlKgcqa7gXmbsO858QMU=;
	h=To:Subject:From:Date:From;
	b=utGgw45nnxDCTjNbNN4/BSjX0y/J/egjl3MPJs6t9Oy88C0x1sw5lp7o1pA/kohxK
	 ABbNM3THcRIdtqgl6ctTDNkMz4/yssZEq+FP3myjbH6G/O4Pu3IQ5l0EfnuVWVOaor
	 bKsyPVXef2HumsquHkGVJWnTF+bNWY2xDiLbGWqwSNEC4Nt/ir4fv4Jzm+TeBSw/Aa
	 qxocumZhZ7kjGtNh+BQkz6+YLWsvV3OEwxg55BCw+vwJFIhd0kYcSnmwW+TGQiFwH4
	 zrOBrXSp6i2FSpwLRwJY+zlvJ2dBnATZJa0egg5GTwVo2U/14ixB7d7eBlMM7bZfG5
	 syB24LamuKfyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5736DC4321E
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 14:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166964585435.30732.2214274949447104308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 261bab2fdfa5cadbc3a425367b910c0d42192313981a633ab5599730f54daaf2
Date: Mon, 28 Nov 2022 14:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669645854
