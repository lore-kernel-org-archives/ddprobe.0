Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BEA81426E
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 20:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB0B4C433C7
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 20:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690575128;
	bh=gaEiF4QFGVMWhHjvesp05/HjlqCe3DF30cMdJz9Q6A0=;
	h=To:Subject:From:Date:From;
	b=DzNtFDiHX13yAB7SzUx65X3BlUbVqG6xiYVqMaQN5G7vS03X73wXjWwDnMuoJYHcs
	 ylAcVERXVRFzijuLnez7m76NG3WcqJUD4ejsmFydQZjf4fSE3mKvcqsJy8KdoLk8/k
	 ilgzQ4g55XeuB1Ol7b28sAmjtrHoN+Z6iWeWb9UYRAcEcRGFlMj5t8XcNF0dupivdt
	 hC8aFokkuGggMknuyJ/L6UC0Vd7yC+Pmt7GKpdsMo5uSaL/Kobp3coP4awR/isMfiw
	 2J8PxxzZuo7Tfu+VJ8bRAkEV95BiOJp3GvjyUj9Zi+NkggC584812Xg494Hl1lMYhE
	 84mxIQW6B/VGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA8C6EB64DD
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 20:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169057512875.31459.8094949030814946939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60137ceeb5ff921f55e1d72c6d1de9b0506ed67f4c4cd59b6bbb6a87a143d955
Date: Fri, 28 Jul 2023 20:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690575128
