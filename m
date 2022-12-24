Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED8D217E8
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 04:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81EFFC433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 04:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671855087;
	bh=Vb9SNRa/lJzxAYFN8g01vAG1Dcwuv24APR9C/eOhI1w=;
	h=To:Subject:From:Date:From;
	b=vGfyumlwQ4KaEaPBDic7Z6IPXS42aZxpHzFlpSztt9OLm0tjoxe8FX166BJ18o7L9
	 oJ1cUjClPbcboYf0O6BGCP39Irj/zqGGQrlpeDXJzjoXVQS4E70+zbfQdsFymTYu3Q
	 n08+ea9LJ/U2A/cZc8pskq6CLjmLQ5TXUBpUUon50OikMEXuG/t1dqze2rJ20AWHgP
	 IFhQavLQY+PZdmN5CsMw/yy34pAlVfZ1S+UMm11Y1dUKsuEoWp4rThJRzII+5Vxmxr
	 xDVXbafOSEg+kiYBDtzVRHxYvi9T8Blq86aFyTwyeIAte+qxdqHTnC7KeeD/wOuO/J
	 wGoqAU0paBoOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61E6EC4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 04:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167185508739.5264.12146099722222513608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4728d53a0ca333e7710d10b65558a86faaaa20d6f986be997b7c4c5ad22d32e1
Date: Sat, 24 Dec 2022 04:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671855087
