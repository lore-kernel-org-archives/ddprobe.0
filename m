Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD0CF62C
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 12:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BE51C433C1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663504253;
	bh=ExiKutMP4GxYLdd6uEa0dIsbUfXvM/XmnO+Su5m5qfY=;
	h=To:Subject:From:Date:From;
	b=VSkSBApROsm65v1s/BwtW/HQIdtb0Goj3MZKn3i9C13inas947XxePgWxr38E9mBE
	 wrURi0FFgcKGaA8122ysddeJ3EEFDwa8KXOXULEgFtwOpxBIuJ9Wn3LLmZmIg6H774
	 eF36nS5G7BY1RN8AZz+iQBXaph1/JyFdQquDtugblNLYLGfXBiojvd6MHKofGixtJt
	 cw/EXefLZDJlmmfKkZW+lQUkJ4IucRZW9L65yJuNynIZBctEE6rqdKZ44DxuPdv3MS
	 sdWlyvHFR8CslpfYJkVZSN5G0+0vKtanx9ocv0Zxx3xIpU4Bhec85Reg9E/z+xPNeX
	 zUlk8g2Rd8GSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52583C32771
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 12:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166350425333.6340.11405053456221432452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26d63d875115a53541f83b412b02a62bd8728c335b2e6b2a6cd957e4b4d2739a
Date: Sun, 18 Sep 2022 12:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663504253
