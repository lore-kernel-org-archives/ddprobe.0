Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B541C626
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 07:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69F40C433C1
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664178653;
	bh=VGoHrEz8H25KX/f6guPwwqHLZ4uWh9syKkPsZoBikSQ=;
	h=To:Subject:From:Date:From;
	b=s+Iv3P4zBcEfyTDZKlrZel0JnpnC3oZJVpj/035BJSVKZiItndZ0FuGnd8zNWEyux
	 mmQRqtlbB0hrJO2Gin1Hd30trLFdZG2CEIXxp2ypD0tzeqIAf4Ovf/IccLg548z6EA
	 tgKBwKI68JwFaDAV/Rk7EGuKCOykA8OakGhwk/qUJ9KjZBbhTG8TDA1+Bmcq9h9KHF
	 jpFpFJ7aZSKfQO//lHuqOMSaT804UM8PjSKS+HURqRuOQ7l3FlAMVsl2pviS/3wgYx
	 +mg0IXIGuBX+FqCknwIdGl0wn/tLLQm0LYJJ4enPAm+3QwPOVKh63vdbdwwhVYRyec
	 tv2Pnkait//Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52DBAC07E9D
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166417865333.31875.627195137518932992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d5b5e99659414cc14437b71c9d6c08a2f896a45d56adeb8fd0814b3af957625
Date: Mon, 26 Sep 2022 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664178653
