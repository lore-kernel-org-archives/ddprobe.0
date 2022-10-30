Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE52818F
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 15:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 733B6C433C1
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 15:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667143854;
	bh=DRdAKiiMpCJzrB+n0M2hq+AtueU2X+P3wYMdO+Cu6uw=;
	h=To:Subject:From:Date:From;
	b=eTqtpwBZLXNo5ZgdF73BkZFvrJQotSo3L7nQuq+b7or5cDD/IWTSLPakCUpvbpddv
	 M8l7iqEsgAbpvdoqkrqjL+8gCGr2pHh66esl20VMf7rUBrl1cm6lxUkqPdTMDTkeUg
	 uERCR6Hd/DTjQphn51J0JD09uQq7c3e3wYqzLaEBwukAvKhLiMwNTxjDlYMI19p8tx
	 1Oas2PCC9ZeJ1+WQCOmXrCrxKIkoMDBYA3yEgx1jwwHSWjPDdVBghh28AEFZRqQzDs
	 HatCDXAYU14e+oiHnuUAlx4JUjB/ht6zHB8c+MC1/cnR+Xn35B+sYIaKahkNxXVeBw
	 A300mGr9v5MIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 572B1ECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 15:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166714385434.3562.15362897196821764760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3657f04c50724a1e048d98e3658327640da4909a469b87e07ce74c0eb2410262
Date: Sun, 30 Oct 2022 15:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667143854
