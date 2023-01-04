Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C45832CA2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 12:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9874DC433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 12:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672833687;
	bh=f17swCHOeeT07y0xXb+UFq0RatNKV109EtLup0/bEL0=;
	h=To:Subject:From:Date:From;
	b=gt3fqWentW0t2qSmw/1pnGaxzc18F9LOYhwQYjAq2fYioRP/DL9ycyRUz9JsKpDFb
	 wLC9/w6arL10udxG6ZGLT9myhzbg7x33eGkEveHlc/z7tzrf6W5tWwgnvxx5G7rrFL
	 XiudroOxDZRNH5+IRlkVXwg4D+08Smuw2tSzdVrNVZWhy2zbXaZ88EODyphMXXfnT+
	 HtA6nA057Ep4iIJI/e1ongSH6FYDOeUf5Dwu8v4YU3pQztOTEDAZg7MzhQju13/cRM
	 keuLLXodGubgm30LNiBsABmlHnt/x00pQozJL8x1mAw05I1T0sutRgWbvJGC1GIHOp
	 tZdMY/PGTDV0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7957CC4708E
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 12:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167283368747.28021.2568284674835335992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 688bd7e6d5d80f14ab8adfc04dd89ab2c53145c519cc4e61c2046f968924b8b5
Date: Wed, 04 Jan 2023 12:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672833687
