Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93A4DEBD
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 08:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3C3FC433C7
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 08:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690100528;
	bh=LmD1UPvovMeBFFlcBfphKmn+vVuVZqaczd7+4ie1c7M=;
	h=To:Subject:From:Date:From;
	b=QugUWbSfT2SDd4eQ8VS0dAU0wW2hoxplSWV+nvn9nELZAGlPRvd4lyLZKPQ6v15km
	 hyIsbrdGid+QjYfpwdijH5EWP7toQX8/VrMPWwkxAjc5faXfEstTLRfpi+5NpREGjg
	 gEged0vdotIIHMzqWODh6wIs5V9Uos+EwqacYd2yYY5CESB/TeL1McNNP1R1d1W1Sv
	 mKvcphGeyCcl3MWlVAND0ET8CBFsgbebKiWqbWBtkYfAEfngqFPcaNzec+e53qaNf6
	 tmjCo8zb7uk2lmXTRL3fzNVue7pVv4vxS72cQNu/U6kHwjnrmhHAVwOTbCY3DiBnYM
	 KfpDuyURGIf1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5BE6C001DC
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 08:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169010052875.30092.2730256173517572319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7e6f031be64d3c26ca18a0d6813614ba4814c4ee1c5a8762b012adda36a3e0f
Date: Sun, 23 Jul 2023 08:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690100528
