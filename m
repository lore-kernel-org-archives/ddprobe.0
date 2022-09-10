Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDF4FA40
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 08:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74610C433C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662797453;
	bh=eZGpgh/LHD1z75Su9wWgmaeCAIUtWSFryGITP0HtEFI=;
	h=To:Subject:From:Date:From;
	b=isoWHI0Xr2kSg97ELjF50lnDbYXrLr1o7zVr2V/K25wtBjDNkW9KErJxttyhtWCss
	 V0h0tl8p/hcC2fYIetI4koih1lowM5isMemTCXvT8E9ROHGE3jjHhU1MoL8favTfFF
	 IvQ4XIRIshDeKeZ1Af0F2I3PHedVAJTiLC6OltjGZT/2ftPj97IVrcKe+YgRsmI4bt
	 opIUdVRLzwo26HpwDotaN68pT8+qEjQvtI2Zv0AHZiFxuV9HMCCOh5SL1BzOQMLMMN
	 aOuovEGMwjGk2/Eh9FwAEkF/qm7FZNMddT7wz1dWZYTbNcRBaL/8m7XHDuUaRV6dbu
	 F0/NaURcH0XaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54AFCC6FA82
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 08:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166279745333.15967.16969776127848601319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2218d3eee7ff86f7e5e33f7cf579dc1cb3d1244e7c8c8fca9fe5f7a38f628ae
Date: Sat, 10 Sep 2022 08:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662797453
