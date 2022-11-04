Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B50C48490
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 18:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 689B2C433D7
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 18:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667586054;
	bh=LedyWAErMktQlFPwCkUtp+Q1Vt3b1id/P7cS8FrxNyg=;
	h=To:Subject:From:Date:From;
	b=QHafo/nbQVum30kn8NGCq6+PC6zzfQakl0wfEAPjrA/xb3SITHDkdYqHiUdpTCwAR
	 hyKxmebxTWB/NRAhxUGdvH730e1zrk6cpOfCDI/KR4FS34gvsi/pHyzaxDOzcwKkGT
	 zqAAnXvZKEZGuqJ0ZeUOvorEnOmCX327zO+B4Lwzt/VST6QZk9I8yZ0xf4mjnXqbNn
	 TF8r7dHCWcWjU8/JVQvroo5T88KN/OBWy6wkuRSX1szQK5crEQpoc3aeyBQJn1SWhN
	 rjKB1Sa4G8tUlvE4yWlseOmNar6flWTpbpHlpB6gSWz8IKxYjsXqc/ewbucOAnrDyS
	 sqFCLQn5BMSzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 523A4C4332F
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 18:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166758605432.10783.6647157586946337888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef5abc2caa2eb9b043db3ca59d83bad34e6dffe92e5dcc0cf665c80a2bf23b8f
Date: Fri, 04 Nov 2022 18:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667586054
