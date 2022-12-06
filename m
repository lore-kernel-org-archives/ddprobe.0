Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA3252F2E
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 11:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8948FC433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 11:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670325654;
	bh=0hBcW1b0Ou0YHHMpbNHQdPr3CM3PFLNoN1tXWyzOHOA=;
	h=To:Subject:From:Date:From;
	b=mD+8IBNd4TuMM+AFXCnzwb6PGz5DObPFZgSXmjQ60r28I8LYGSsL3DIY4qlleHX3/
	 vi06qA3kZSwcPmjj5EXn17qn9qSUxw2YmU6MtkWPL86HTRVQbUU2+Lsuv+ILw2AlEz
	 biQB2XruXlzaS3RVY8SHzfx2znivNrQeAGxli4aUBst/ZxwygK/HaDvbk38bMPSPe8
	 6Dkp/TBQGRj0Ajb7ihzedVZKQ3dg+uisiG9nwh8p+zQVPbXputzCSL5u5dkcQiuAQP
	 +mgP6pAUnH603plHcFXBPtdskd0jnWa1KzOPjJFQfHfi1KVtLgkSfm+d3nuLBlgEXn
	 FMpZTwTfN+KTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CD10C4708E
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 11:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167032565439.1324.13606917594425274918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4e7519ff0ed1ff4e3ca95d398a5f127888f6abc4c78b3fe1787679860ad15a2
Date: Tue, 06 Dec 2022 11:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670325654
