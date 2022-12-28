Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF38B6D24
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 20:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89FEBC433D2
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 20:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672258887;
	bh=U8d6nbMwXJLu/gqs6h2keAhc7LTNcP1DBrQhkHxnAAs=;
	h=To:Subject:From:Date:From;
	b=QiiH40Hy03wgowjaj6dHiEqzadij9BPh8i5fZ2jgsCLZREwfIFYg4UWeTl0HnvEDO
	 Gg3syea4FjkLVRaeT7PhhKkf2fICIYVTCjZkOCyXmLdc7ziNMu302TnVneVZpsf6Ww
	 aEigSq6lB6gloEwEgwicVaclff+nvnn2/8L5SICbH7fQBcUFcoJmCtAwWHA9boZO+I
	 VsZ5MeJaz1kGN+PVYm+Z0IoJ5t8WrQ+WW54/IFKXErHwjy9Fyso1Bs/BxaS7yVxNW+
	 uc8j0N511wKTNPxUQjpr+AAhQt5MRc85CKLmI+KoGO1U9bEE3FJ/CxtWMcKalX8Ex1
	 6YMEHBAUIi8nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68321C4332F
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 20:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167225888739.18549.6253712849589444061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c9c85bba50dbe492f8dd784e62668339c413088b27ede06a0a51a49078ad073
Date: Wed, 28 Dec 2022 20:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672258887
