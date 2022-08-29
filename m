Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D13C23D65
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 13:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C841C433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 13:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661779252;
	bh=HOLwN/sO3lvPDs7iU/4evwaBiY+m9hkWzoSC3QJQ4R0=;
	h=To:Subject:From:Date:From;
	b=ndX4XdZ2Gsvh4mrYfccqdcNXKQ/Ts7vGG1KjvrEVJI+uVY4jDaP3SibgIvIEIaxxx
	 cBYy8tEUgdOONPe34M9/4a5hPS8HkKZsNhrR9paRbqfKHO2qbpePxsde15nnCX/FnP
	 PueI+tC4IsXAsFzELobGXJBr+a/d91C5Xyb/YOqG+jccRr8Atp4rj5MLSIlGrvzsfS
	 SZall4D2x19Ttj4xON9PUciU5aMXtb+p9s01PWtgwJlei0enpShbCc60bJGWH4Gvzf
	 /SpEghsxwoZW8wINzJYiB3NSORGaTP4qKQjp8zwoWYVPOhaxZ1IveDLM/DNRfdXaAE
	 KUqwk+0Vkjwpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6430AECAAD4
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 13:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166177925239.28733.60030152147139733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c871faa2311a52dfb850eb9e616bd897ae2fbbeaafefe39154956844f40848b6
Date: Mon, 29 Aug 2022 13:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661779252
