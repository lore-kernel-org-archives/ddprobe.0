Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34029643
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 07:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4083C433EF
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 07:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675840205;
	bh=GziRcXF1l7GULyotCwhoGeyNjiHKTDUGKUlnQDZWPJw=;
	h=To:Subject:From:Date:From;
	b=gNptayMeeCmgsCvQE9IVHnQh9vv5ETimchCyYscXYyuVIz0oNg6qXAt6IDVzGHY/u
	 SWvB0ALfSga779j+wrMPAjEw7yJo1T8SRuP7rbxKupVzJ01QtOJRMkSWaFj7ymAmQ8
	 MUVL1tsXI01puh0hvQuoe7vjnz9FrM+QbH/M0iw9nvB72zVEApsTbBxsOg63y97XZ6
	 CFWg2RPL5LWG/iu/HbRZqat/TMvqB80s76WFPY+yLRLhUtc+0jFPDQv8boQVhpeNQw
	 ZPAY3zMHOjdbtteVgvvmNeW818Jx8ypBwL/1Y79wIPxHyOleVhz/6FNEXMVA75HLVG
	 Wt8phGyqulpWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6759C636CC
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 07:10:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167584020573.2425.12671119674671147425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aba05b45c80c7873de5e5aadb03633d4efa0ae583803a1de5d3dbb6d1ee34216
Date: Wed, 08 Feb 2023 07:10:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675840205
