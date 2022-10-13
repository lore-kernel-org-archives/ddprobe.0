Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B27F82F45
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70B8AC433C1
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665664853;
	bh=RG0Q1zuvf/jnSms2Rk0pfCxHNNGUu4i7UZ9WYJf97uc=;
	h=To:Subject:From:Date:From;
	b=BxX7r90SmBrWPkqjau+yBDS03U9cEv0MAYl7FAdEjr4vt+fLgQcW3YJB0UiwnmR6D
	 iNXPPGUsmgHVPWFGqjqFKykMrPQ4CiQxeofntSbbAyx5Vm6wg9aIB3jpBiUtjgim3L
	 GXyxbBgBdz/GYzUTN4UzHohIZEpkJ1mDAtE08J4y0LM+YSNa2jm4ANgSw5JnuaVels
	 7Qr+eBGRVo2v2r2uNchS8RjGPrEj6i/sRd4aowwjMUzFcXIAXvXUKxdnuOqCSljrjR
	 afN3HGTGmXkyjFro4MKS65eHBDPsRB8uXYKjGStT6J/t06lyOh6xBud1AtQ2tI+vNn
	 X1HXtFlt0EcvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 552EDC433FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166566485334.5167.3518388072518952641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6421503bdae8007f924be296c54ea2ac17b31ee4a479d45972624ee8f1b595fe
Date: Thu, 13 Oct 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665664853
