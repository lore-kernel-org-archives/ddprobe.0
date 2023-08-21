Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A8803D8F
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 09:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA02AC433C8
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 09:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692609248;
	bh=GsU0dMrdJ79KIq9skZta5cB8Bk+QWDiLV5T2Qp6p/3M=;
	h=To:Subject:From:Date:From;
	b=H2NdUb/nI0xWehogGiDNcANSU5313juKFzm4TTxP4d4aWRZimF8UdnDqsY8ah9AwR
	 hQr4OyUxyFgacoJJxDnmPqrq5rSX3lOWfWzhfm7eSyofJkvE9xDZ+5aQcCLZvGDQl5
	 /e2ME9iYbTLYbiTywGjzVawuJVcpUlytS4Kd5BU43xZwcCAxTK9STbglm9zghEX7dN
	 CUrSmaka7Usg4J20W1HP4l5jrKzpNFNKPFICR4PF2aPCNpN6ppI1e4U0lodjlk8wto
	 Pan58bib+3WRdGDxfir20I4r+GlYUcLPiBnGUazuiYxblh3tihJFyYK6wQAb/J8bWZ
	 6uFCDL0LaF11g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF8AEE49A5
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 09:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169260924869.23060.16733242371971506079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e68839ce6391d9518bcdc3f9d1ba595a003ad9bf98a742f3b306189900721d7b
Date: Mon, 21 Aug 2023 09:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692609248
