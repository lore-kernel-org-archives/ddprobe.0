Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2D2523AA
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 08:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DF9AC433C1
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664698253;
	bh=xAYWglxs5S5fCjKkuthTDUEl7v1v4QiNQeDJgYtFIcg=;
	h=To:Subject:From:Date:From;
	b=c0/gvAiutgee844p+zo05It9pjjGE931HbTZZN5JL3yqEB/FQx+NQMVGf0BP7IDgJ
	 bQhCGy9i+BqdU3Jh+HaVEj7EH7TpGTWTwl+2rIDYwQMI+hk4oJr10NoYlN1oTwB4bB
	 mdH+RJDX6XHxXs7xzuJ6uMQsFTVsWJSEzoNEre0IKEvd37fVEPuNP4PDgarDLqlLov
	 TI75BL/Ow+kWmAVtt4r+Rut6/y6ZPXPskMjA0si4KsXSBCi5vhf2WFWSVbCgkAtSYj
	 xWMITUunzrDaV7k4ltXm6p6fkJj/jhZ+kWN9CIMQhiFQ/EKgk/6zal+TaznTtygWXq
	 bHTsGSE/vWKSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5133AC433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 08:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166469825332.18521.1880902171837844189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a5e7312cde47c39b315b21e4f8ae23262d446a1c1a7e2dfaf65c84f86573741
Date: Sun, 02 Oct 2022 08:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664698253
