Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD4D10EE
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 22:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6CD5C433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 22:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687992788;
	bh=utI34kZMWNuRhcA3Tcy772DYKUl0Ib4i9lpwHonL9lA=;
	h=To:Subject:From:Date:From;
	b=iOYu0KwYyfurCTXytslec4e1rD8HxP0RVJaN85e4GVlv2w/FGnhGSafKiPAdBDrZb
	 s3Rqxcf7q224n6R2S0X7IlXuNcQ4VkTPIvrCHgxZQ7BsHPfRLnmSYmKXO6gq2oqzcb
	 NmM7ZRHJTP+j8WjTRu3bZbakEBdwWowIZrbA92yJL1HseG0p/N72jmUl/npyXOAh+O
	 SPgFeySS0SjgkU9BdBpc9WlWy+RVlb8OyDDMLNDAjidRBpYkcr8tgMphF8AceRK8hc
	 wvtNczS87AnW1Ch4L/xQJWHDvDoDKeEZED4zuzdKGMypbXEZEYVa+w3bQinj+d1xK4
	 UQy6+aDqvrVQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB951EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 22:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168799278869.6870.8271869947586037165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f80e7852f6408b62bd547162855932da68e269dc910e33816d848558dc686db6
Date: Wed, 28 Jun 2023 22:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687992788
