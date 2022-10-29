Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D47FA15AF
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 10:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87F33C433C1
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 10:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667039454;
	bh=0469YRA3prtAcoSY/49JflOA2Asvb//1ErH/HvjFBNA=;
	h=To:Subject:From:Date:From;
	b=WHQc/gZZdpeg8sZe63Eb8zKA+iMze8D8QabuLpg5mrw3MMN6j+qmEWQx8z6cLod5y
	 E1Ht3aFPL53n2Zq5Nc3q1oFuCS1lVnXAwri2dZ56ZBpmQyXJ/j7cuJ7u9EIS9eWiqS
	 zmC6mkykBy8legTHecUvYExwaZdI+w78A+FkZJriynDb9BuEB2GynkwGFG44AadmVF
	 x+w2wH6VApydaiAk3e/9Mjt4Vn+SBpTbLEDNoXhrTXAH3jUsCmXoax5YKwyoaIha4L
	 etKpUuwI6pB+cAu2oscR3OFvJrQDcf9Jjob8OUjAyKTcgAYDJOtHkb8IBlpgMr5fcq
	 tbwL2UgD8LtAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FC2FC433FE
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 10:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166703945443.4496.17489945565558976748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fc6f80953c16ecdc99c0662acfd1e113ca5bd5a9d78ede5ab583b95d48a3a62
Date: Sat, 29 Oct 2022 10:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667039454
