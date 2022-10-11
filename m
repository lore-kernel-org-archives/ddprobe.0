Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D198C15AC
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80B88C433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665450653;
	bh=RzwNApy2DajsorLAfwSFKAV3KOUl0GN9kbSdipFNy9I=;
	h=To:Subject:From:Date:From;
	b=Wssh+ciaKqov9PixX9xD+s7XeD5oU0MK710tONWw/8v+8p3x7PJCMtIUHgC4SKZcr
	 c5CV9r//dOBoybuOIARYAHkllZKZBPQQQmG2k+eJKxMvhAQ9M/QW2Jaq8RgqnrINFf
	 BpKTmAlJVPdu+nUnX8GAba9Of4Ht+yGDt4tXG/lRjaX8K2Y88QwUlTyHcrgRA1GDUg
	 VKkWnwZ2w/d0rRkFERerGHnjlYj7dIB7TJgpYg/YFD/ULlIz6/qE8f9xTe8fdnFTvK
	 mdzhwcW5BK7ydpHa7ui2cPU17oL9zP7b/mamMWrgW1XwnIh5hc57aXLQR+5m5jLYEl
	 hDfhu0VHuG7Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 619D8C433FE
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166545065338.27100.14020795451364976691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a584517d5da9ff55e8f1f5902a339509f0a3ad8453755628aea757094ab1d0c
Date: Tue, 11 Oct 2022 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665450653
