Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0EBC364
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 04:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71FD6C433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 04:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669609254;
	bh=43e8WYrdEr/1eYEbMmeBGBdt9JRhFlN6BMEt/GiZ3G8=;
	h=To:Subject:From:Date:From;
	b=XOPZPuhASJdWWcEPctbB5vwSvB08a7PbBJ50Ik+KJvitQKqCGXzN9MjJwM+LQyWTp
	 dajjhvrP8o7a+Eb/Zbp8f4UPZEv2Afn/lFSGjg5DH1pERJvtvFVpKS+mVylkD7bwn4
	 vlIk+RUqT/vGPcGeXssVcbdNMczzfiH+ovy9PRhOO84BwyOVcjICenF6UI2LiW+2kn
	 WkIrFME3DM/eLO06xE2FQKE3icfM2eTbBqQwnTWEAHDJuQm0MuEDM//726FHcs3KS9
	 02bJoMbDzcq+HtYea7EeTbpSnoJ5r7tS0+MR65FEYyKlfqjkRSJYmFnthJ4urzvWei
	 cPjUif7AjGuYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54D3FC4321E
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 04:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166960925433.8938.3939012827259730502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a62ae7df358fc991a35c07a3f526ca6264dbcfacd618998be9d5c1195fe4b81
Date: Mon, 28 Nov 2022 04:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669609254
