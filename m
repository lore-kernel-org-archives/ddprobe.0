Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4660E1101
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 02:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB02DC433C8
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 02:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690338728;
	bh=QMX9UDStWMQK7Hj9rF8dIOBfbcskxYPAQ7WPJcqz07Q=;
	h=To:Subject:From:Date:From;
	b=vI5OvhyM9j5Y5xEX3urw4jzmudMidIKcumd/L61gJJXWBJ3i+FyZDbQcPTMrfkT3T
	 UsXEmbOVq3cYzs3smM8ZeYobCLRklzXEq5Uess0S3jF1jLVXEvB5mAnnQTEBy/Hl3v
	 GN61XUwniyrY2GkIKEniBGfpEWfntnAet02AIwnRyOXmNXMjJ7gSB5x/4unYQFIpSe
	 Dkkn4bRDjO8luIRvHv7BNq6cnn4NH7mZqko/XXs7dxwIjWeDrjBD9C9sfSrx7NqY9y
	 htPTlNsCDwdh9/BSFVJSFGyjPsNFDJ790Qp8woggds/uGJW+qpxUjPt4UZhl/pQX9r
	 WdOiC5fnNS2mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD16AC0015E
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 02:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169033872869.10631.85631889971649762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48a6857463cc62ade4c7f4e97e6a389b0ea201f22a7301a11e7826dc03d9ed14
Date: Wed, 26 Jul 2023 02:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690338728
