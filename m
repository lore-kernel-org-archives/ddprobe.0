Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AE5B1C13
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 11:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D93FEC433C9
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 11:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688817428;
	bh=hpnwzvMl9ckbPC34u19JGYbmF+Pxx3iXxyRfK7DTZUo=;
	h=To:Subject:From:Date:From;
	b=gO16p0Hc5GnxXoVnEqbQwN7OGdaiBhflDy48ytk0Vqu0wc9PBrcnaFTDl69w+3g/R
	 qvfFvR6DyW95t9d0etT6VUmIC7fpBgFj6K54ouoIP84kfFaOEfrb9tt/ZdsL06y+f0
	 subzuszcJLs9P/3i2u6pXMZH74R/RewQJVrdgPeQlhWDqTesSU6tZTixXEX6AXqlES
	 X0stFVJd4BJqQ0nHbVhxa0mKfOY83ZnJdqV32hrQNfSp8RPTF/S6cIC5y5ILKwLXba
	 aZfd/k8mtEhDdP9p9ZrzGtdjzw76TPzRMy1v8CT3tdMObObPwiE2S2EzQ0d1KOVNm2
	 vURjx3bcUy5kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6188EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 11:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168881742870.13806.1424796678501372588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ed21ddbe0ded995db35cf0ec0d658bf5d066daacf24c04d848a4f5cb3b8aaf7
Date: Sat, 08 Jul 2023 11:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688817428
