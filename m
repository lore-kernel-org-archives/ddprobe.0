Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C040C46BA
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 706D0C433D7
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663452053;
	bh=8oJ9eucilZuKH6UUTKSmi2Nx6JhToDSc6KTHsiabBec=;
	h=To:Subject:From:Date:From;
	b=u9Q0VwVskZ8s4ijdopmDenW0uxSw/vlhEG8awCYcCOrQee4WGDUfTmNorAp6Eg55d
	 NbD7SMbwnmZI/IsWTv/5KXpYYhy3950xTjUP3NqU5fM3SX73N0Iti5ciDHAjOOGEj8
	 ydaCElgz88HBcNxjgl66O4w/3uXkLA/LNXwG22SYZlk6gaJUSvUxtrCpURwjmaX1Zo
	 Ip46xZTyol9YiO3Mxa3GT07AMau84z+4YOgXF6Ircy8kiIJrH3WpmmZURunrdhrwzU
	 XoKRkIVpJCs8Ls61YDQ2ZSTIWsBTAEaN3vg4dXW87MUkae/cxWYikZiiDZNUKDmhWQ
	 qNVh110H7xUvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58881ECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166345205332.24619.14008791480193573333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a198c1a61f4c111449cd9183e989206cab6e31c4f35f7ec6c429e66911e5142
Date: Sat, 17 Sep 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663452053
