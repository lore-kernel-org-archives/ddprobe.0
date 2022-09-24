Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C74557B
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 20:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73E15C433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664051453;
	bh=CjAM7F+yHjRzVtPQBBQCLZPjUScmdY83JSxLrZJftcY=;
	h=To:Subject:From:Date:From;
	b=kYEa0B0yEjhcoTaXXd1dNuysCh26H16v6IpIknHcWXh4D3GvIzgcRtrRPK5r7BL47
	 Hh42w8zVeZ/03q5X6TktKXbeXuRk/gFwHuxxD2ROqtwXOJoR1/4/ObaN1HOZeEnadb
	 ZjNvsaCuMGxIpmxs94We2QrlVcC5xVYi19Hoiaa0zP0cWsMMnifvKs7ColYimr+sDP
	 k4ZUJWKIMStH6NUFyy1aJjuQlNdsXbtYHBwdUspXaUwgwPq/hY8P9BF4Y7lIbeLdkb
	 ZTEhstCWv9BHuhm+aUM0Lxu+5fFqIFRaKXDl4bDtkDuRqBu+d8ZpewF+XZylA0/KG+
	 8jMbSQVFg/EkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58B40C07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 20:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166405145334.20259.10386750687673022781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfa45036c203c94f0b0c3a8d9af3292a1d187c2d5529205e84149a51cd54c494
Date: Sat, 24 Sep 2022 20:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664051453
