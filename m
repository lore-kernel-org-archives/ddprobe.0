Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B7C046A1
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 18:41:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6851C433C7
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 18:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689705668;
	bh=Sg+9YHwUnI6AzIm9rzmVLfgS7FmQwaQdc2067XX+ZyE=;
	h=To:Subject:From:Date:From;
	b=GxwJkF3ZB7j9Ts1i4vuXr2Szd+xO/1cn2QxRiguOnCBNU1aOEJYdSICUIZn0hQtbB
	 n7BKIAE9vvRevu+ITqFpn3M6IozIv/R8IGA/628ZvEmWTiCgQe8OCzY+vhLZbM0Fju
	 JI/tBpqbwegKUXnMnKAx3JD0+OsDgzvGmN1LfwcrUp9t7Nws84AofzOYtFjRMOzJVE
	 fDzhKx4MefR393JW+QUaPMUpe50Lp/Tp6cNL0++szCZ4CdRosrv0Z+u1ca6JOQHNWh
	 NBsGe8YuU6a912mm9EnsbVxliUol5jz4H1Ce2KP2tXm3fAYoqYWrFIujkJnhLzgedj
	 Mks8s76O1nmbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8599EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 18:41:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168970566868.20182.7537764412647196919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d3dd83eac1884cf0ab3a747decbfa5608a83840e8f3a631ba2db778eb556c3b
Date: Tue, 18 Jul 2023 18:41:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689705668
