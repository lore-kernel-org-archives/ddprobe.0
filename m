Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 840A5136A
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 07:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0AB0C433C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 07:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688281448;
	bh=F4oO7pZ8bRrhLYlYQyVkYQ1dxv8EhbW+tpJdi63jbPU=;
	h=To:Subject:From:Date:From;
	b=H3f2rXd9xmh7BiKxW+aWuV8YSVWpgG4b4T6QV3M+032AzMTthdJTCOGXcYgzz8dJZ
	 L/h+uCZsd/g5+7v0+0Q0+nBAFTBWi+NHcOWIbWDuMRotZaAdLqXl25kN/qkZkYkKTr
	 pgSr3/mQDbBeE5lYqkDYZyxcOviR7qUjfmVrPNMmDcPJABjkJnmKoOayzrf22/UmeB
	 L+p+p6u8OZ/cLPqWBPotOcym+W+bdzsbsW6EFyAhMw/nsGMwliO7cZWLg0CagPPISP
	 l1vev1y59AS2MCXHU+G0lb9qoRGwlh6OP0ue+3mrcScnLF5HibvwhEso7QUevVTzlR
	 dSjVaG8q9R5AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C089FEB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 07:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168828144870.32082.6218661567215387259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 642011dbebbc968e59f6931b794c446c2673431d468831ce53bdecaa5079dedd
Date: Sun, 02 Jul 2023 07:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688281448
