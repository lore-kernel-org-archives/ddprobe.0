Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C59AB20F8
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 13:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7031EC433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665755453;
	bh=nmWuUG3rd/9K1hRaqJR4AmcPsCnbsup4A/G0v/UbVCg=;
	h=To:Subject:From:Date:From;
	b=taTE+3PEQ2hTETmAebqayG+8UOgv3PbCdcJRXkj5rdLAYNKhiVg977FuyysDYpiYz
	 faBbEy5GAg45LMQJ9Iw8tl5vPoLf87g7TzZzo4K8Hh4MUQPDjtoiBFb1/FzAcx5uk7
	 Wzhs/LgjqojrBA7Uk2V2PKDQ03YiLGhaIWWT8ClRjvH7w+1lUob61LTHou07d2b6RI
	 1aHLE54xLxkuijgfZ3iQg/0BUf3o+Xaw049tGEuLbQ2zQR5jYLVDxEVqtZJpbuJMNh
	 U/bvetkBE53+eeCcu8NMIq5XwRqDx7m+YHp7fTUstpithmzrx69SWW+XqcyGTP/Mee
	 VRPvg1Dk7e8lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 535AAC433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 13:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166575545333.25538.8723086965026811358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34995a97d48a6fd62fa0cb0b1d7d180d7fd817f200557cbc8039b503ccc17fa2
Date: Fri, 14 Oct 2022 13:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665755453
