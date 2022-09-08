Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBF5D6126
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DC06C433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662679253;
	bh=dAdIg8Mw3GGXsp9E/PcqNNCo5erngU7MOsX56tgBU7U=;
	h=To:Subject:From:Date:From;
	b=edAi6jFv/6RM79HBt/fNMDJScmG+jb8WwNjhbpKPcvkSl5ucLzXjh4B8zIGdpQ/bY
	 n8FY+LMt9gUEwt67T1Pol9p8FUIs5V0Whrj90fWiBa9pCcGgUajHYJzASAyI1fSgzC
	 s5+pYRwJUrmhoeltX8ambuZOXCSOe6NROwcn7M4Dv3oAtRSX2M35K4XQX+xYymeLe1
	 QpR/QZb4djpsfRKUg/aMd3UlXWjZP3HhOewRuXEmFeYDi7mQPlEknHN04kXPxZIC1V
	 GFX2hqM86JK3PZIzOkLiIwtQO33QkUyAitaAYMtP6uGlZO2A+ZuzAN8z5QyvfjU+gy
	 AAryEF6F4ipHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57589C54EE9
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166267925335.23850.9649388013074026021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9caeafdad811b80fe2e419d1a6ba0b9bddbdb13ba2f148f0b0cac2fc4fdd65f
Date: Thu, 08 Sep 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662679253
