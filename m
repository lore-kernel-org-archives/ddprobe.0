Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4656EB27
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 10:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 711FCC433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 10:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669458054;
	bh=2asiKGyan+eZVKUy7JdgexmpzlPtsD0tv/HQbc/Gkts=;
	h=To:Subject:From:Date:From;
	b=Zv4J6Kpr3ZTMPKgBMGBdn7pgQGzE68vUHBwygJEYOMOfOzHbpVpP6qz7kj9sO4Y1u
	 1K1qkGpB5gdeKwmFZcAQgeH0Gz0xkSYGVPD7U+giuYpBIAYwtHHZra5/scWqF27iC7
	 pr9C7ePru5w/kTIQXy/l2HwZoPLQpHnbq5ngHvODUYMXNiKLDQNSVo1hDBXwknv6Xp
	 wsT+WO1U/JcaeyIaOlHWlByY8jNWyr4fmlkXYgfscRHf6iZAw3isf2/8OvKHu+KLeH
	 Hny0eYzz2MjFghBoWK99mp1gqxAqaCFbXVCp/i3fJ+3SCAmEbjMoSb0DcfQZD7d3AC
	 BxPnQAtxMUqVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51BABC4332F
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 10:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166945805431.1379.5902829420459096189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fb3f322fd0b31d9bd9970d8abbe1b2cd18c35d910c73c2124c2ea79a781be2c
Date: Sat, 26 Nov 2022 10:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669458054
