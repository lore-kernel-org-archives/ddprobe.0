Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF45C632
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 03:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 750D8C433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665027653;
	bh=cl+xplDxF8CBqZjFUSXlEXdpp9iqCNrOH9gI9OTQBag=;
	h=To:Subject:From:Date:From;
	b=Ce5dxHiYiEQlrr+KPeM9NMlgTf8lFD8efkQXYQFKge+i/w5HbBx2RjnXupm4a5zbO
	 XjqE1equ23mUZA6kvPyty+DGiiVr3dA+gQaxMOG+RZ3QmJsU8ebKj+iGs9ZtXWzLUI
	 pFqnTR6NktF0OYh8GNc/SwqU5yIgyWcDFaR36xo4KHgCYg7PcDQh1x4GqKO6ViEnrz
	 jJhpgOYw3a5E6lPP13WxuQ5cCQnIDs7Ia2WeYt1w0cyVFZOft47netjv4FChslvqyd
	 adqMqS9DJsZHbK4aGgvzRWzRIEzK0B2a0iutCW1sJO2WVTQ1EEm8pSY7tjpnSs46f0
	 m5wlTqBk2BXeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E8DC433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 03:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166502765332.22121.18414767697070705672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b93fb70e6d75d46f845b5f916090b1b85462b6c866904384fab01a9cdaf1dfc6
Date: Thu, 06 Oct 2022 03:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665027653
