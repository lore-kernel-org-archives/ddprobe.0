Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA92453A4
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 15:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 722E7C433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 15:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661787652;
	bh=XrCBXCi/CcTKmIcFEwBSykYWkQIU4/DmF5/nsUEOses=;
	h=To:Subject:From:Date:From;
	b=MTz+bvYBibI+Q3XEGH4Cjxe50cV+9EsreHLdR7zwUyGYrZYQcom+ud3EtOrIPD2g+
	 UtONedYfeq4EOBMhqnnrJzXPS6FKpOlhSxdQpfizWl8FJSpXWWMx7D223sxspf5cwy
	 xaHeeG48VGO576d2i/G8ovJWmNAkWXoklIDkFAQKrmxBPXOEnhf8QkdSCrtn5q8UFP
	 D/LU+BOwGeCpJtKUnBlC1i0xkiznbBVG3W3N4yXfbRqCGbY7FObTGn8o5yg7KJp+Sg
	 KwXWA3mjAieZ5WWyEkMTnTc/u+RLGO917LSLvCOW5GyVsryahI/4ECmNnTXSLf0BiD
	 QLWfQYoCxw8Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52E8BC0502C
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 15:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166178765233.31498.2527398580692332587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f049b3a5add603ea7de73eee91cfb28cffaa5d582a744c12296ec8adc4b0881e
Date: Mon, 29 Aug 2022 15:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661787652
