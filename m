Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 094317E8
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 03:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A25C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 03:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670555487;
	bh=s8dQ59eXa7h4KtlH6Tw9pC7YumpQnR2nDGTcE45sA7w=;
	h=To:Subject:From:Date:From;
	b=sst421w06ESbNH9c0YPx5tFkjnAmjIIaIXe8iy3GIEPTGGGXLtpdgnsXnT4ASVVeT
	 2zOJfs1Altc65Vb0P8S2RTdX47d6BYdPr96niaWawE2ayWgHXyPieOqRA7X2Z8q/Bp
	 PBGBYvnrTkafKNjY+4/APIWNwhUPc07z4M6sH8N2wkvY0SWvPu2r9I9pZSPvzSsmUL
	 gHSUdJAuGSyayN/js+oEjl3fuLMoWPs6P/S4bEbA6KqJZCPJP6TxvkTlMB+Hrhy8ks
	 jPoQ2WBcbzsQNH0NIG7vMpAFmPlVnhwDn8n+hjqHeOjxK4RaBMLakTETZIr5T1tJk7
	 M+/hgTwnytt9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82FA4C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 03:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167055548752.2618.4948425765276789510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61c88da6670f45e4b72ff800653ea5a1be4fc45e6d7a9ef4087d26d6667271e0
Date: Fri, 09 Dec 2022 03:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670555487
