Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEB8A1FCC
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 04:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BECFC433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 04:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661487652;
	bh=2PMQkPgjAKv3X78DYYpXytNnSBNuuDPQayRvci/LC5Y=;
	h=To:Subject:From:Date:From;
	b=lx0UlHDN/x7xuprKO+8hVoUO+7TKjjtwJ7vhjO62gxg/tApLC8qfyfIy6FqlKBQe5
	 FeA0AnwTFilimnmqaCWS5z0Q/xMu3kn0kaF/CcsPOdZN1Mi1QbjUzDecW3Qh4GuHrI
	 03Zr50pG4ORTWocqxr3bbUjsFyecpKQs4rrHTX3p7nQ/k6OmiZbtqpnISdxPDbfYID
	 tjHDrfkbZZqjzqUf51WEVDNPa3Q0nVrXeOSEUpilxcpWsaxni/fGPt3tRZJ8111gz2
	 DaICeTQ/PaKYP6JdvXkG0Z5BkbDmuSRbBWu7R8LHai22xdEI/tog/1zRWY4njXvRkj
	 cqWGy7vD+cQeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54ACCECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 04:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166148765231.11628.13198635474153735017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1575a68d3da04cd9c2ae64072191940684566af74c1cc161ad4c6c490bf986f
Date: Fri, 26 Aug 2022 04:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661487652
