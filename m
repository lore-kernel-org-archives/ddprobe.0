Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C26DC23A2
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 06:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F995C433D6
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664604653;
	bh=x0xa9AHoRQT+eRLl+LCGajFVsAUNLi2jrUu+TnekgwE=;
	h=To:Subject:From:Date:From;
	b=iOOdvLAqo/aZSZrp0PDEecnVAVhFsguNG2E07MkXo0qTDpR8QL2prhLRisnuGjozC
	 PgmrZW1WzVkNfgOwMNTsPjsEBQ/8F+Z79X/7M2K9v1SttVETvmpNSDhgSUBVdG4Rqp
	 9AxVn8fYdn1bBy3yL7ETjuAsRWzl6JuL8RAFLXn4Rymw1cbTCGvc8nI/kk7XM3gnpU
	 3Oe12qiwxUyqCzbHzfOo0yfEaXvEsZtsEZnU0G4DgrCkX7VLNEFFRULkXrgfNE0jxY
	 LqYCW1ZuQ7E96Xcv+fzNcTMDSioYZsKtgn8xsjSQ534TISRm5sVPt3V9C1vgVgcDFQ
	 tXeiWk2hboyyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55EB9C433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 06:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166460465334.22045.14328413689185870663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94cba95340d1b41f3d7aabe454c874aa4360de4f8fcfb42db6a320b129228daf
Date: Sat, 01 Oct 2022 06:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664604653
