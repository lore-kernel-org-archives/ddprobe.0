Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C39DB3205
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 15:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77E20C433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665760253;
	bh=4uJPFLY43Ki0Y/nXrdGYZRVWmsb4St9GWEHTgH3xrk4=;
	h=To:Subject:From:Date:From;
	b=WzxYO70zu3tW3FGKffXU4a/W02R1pVf3CWT8OykO2p2C1Fdr3dbBjp79+a9ipnnGC
	 R366E0xYk0v3Odfk3KXe0Xbvc2nVHlkl2BVysxyIGcauNRd8dRQ6U+lOGFedONwzHr
	 XtlV/J1n5mXs4+4GR5bJjaUgLRTJOMXwqkK2o2wgaueLUm7vjf2cOr5axEA+MUreqt
	 r2wDQiNMUQ/74JFYPe6Fl3GEoHDcvwMbpwK86urpk3xYUSTo/Gmuo8yivc4Z73OjGp
	 kw9izTg3fxGG5w1ShsW6sxR8SMEo5xQPxQmQUjgaJQqOIzQxYdHMdWJ07wJGCAMNbh
	 Mvp7BpQaSeqvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5990CC4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 15:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166576025334.24557.7349983599094232650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cdfe5b1dd9c56d1641f85d54e97ec8219d36f3b905f1dd4dd68c7da424448fc
Date: Fri, 14 Oct 2022 15:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665760253
