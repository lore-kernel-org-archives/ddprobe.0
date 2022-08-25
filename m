Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D439A1363
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 01:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 736A5C433D6
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 01:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661389252;
	bh=aMJd+d+UZZBY5DJJh6Ls4Gl/AdzjZALFVdeDZaigflw=;
	h=To:Subject:From:Date:From;
	b=K+noUvis4dQigH+5cTDiw2WFBQKvtYFOmskmN350cTk4tZopgbCn0hnTgN72qDUgC
	 cfwvX9Pnr5OO4CCVoFHkxC1GIDeckNcwCdnzXEwZQIDViWiGO6YideD6hryRoSSxtA
	 69QRQ8eRix7dUKKtTOa5jCY53vTYPeSDUDv7SPbn7vCQEoOhshLxWKwtxvRXrabZ5w
	 9Gs23QIb7c3EJIDr/BtzFa+j0CouiyZpgPB8FMQqhNp3l2Eh5hSemv19ygMjbaDnlJ
	 bv6zwB26St/dvkOqleBPRQQeBpv2ESLFwgOLZwZDljteXVkR0/P0+myUTXuj8TEVmT
	 zz0EOaopqSwdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55877C3F6B0
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 01:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166138925234.2806.10981983172313305942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80a1b6dd595f4e695dd49e105da7e063313c6a4a3c4464d2719b20c8037957df
Date: Thu, 25 Aug 2022 01:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661389252
