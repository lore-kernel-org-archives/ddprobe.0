Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47CC61FAF
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 11:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F326CC433EF
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 11:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683373686;
	bh=m0TPs3tPRQkrE7ZrgSPR0xT8UbEhGIMB3/Yik+AuguE=;
	h=To:Subject:From:Date:From;
	b=taJcWRz2J6IsvPX2retwmAAktTHkSnqIvMxzlWR4Sv1lPwtvEQ9ZV5ER2dDkEPd+0
	 jpwIC87kwrCdlTNr1mma9gGrzMs5OPCQESt1HfV/5mGIfk5tIGD4cs4/x5kXyw7W36
	 dYwM6ZarSocHhi8gJ+86kZYeKHXP97TdgIVXpK0bRLkEewW6i9lxfumcmV9bs7i5LR
	 sS4M0woKOJjDxEBJJ3Q3MAKsNq22pOYvcH/iqFAk4O+0adPJJ6R9LYsXYKN9PV5+jl
	 OEsvIL5oHBa3MvxEg2HGjrMnr0sO88VXGW3rYfOqZbMabKJzT7OUpyLBKbOG547oRN
	 kRDmS0gHwcpdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0E5BC77B73
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 11:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168337368582.19687.10269777549475660713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6ca76c38951073b0517c69f685fbc3c30495d45e8db08afc5fb3ec75dac0e08
Date: Sat, 06 May 2023 11:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683373685
