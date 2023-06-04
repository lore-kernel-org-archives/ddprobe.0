Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DB2D23A5
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 14:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1554C433D2
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 14:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685890745;
	bh=fAG7ghktaXb/IY9NC7AByuoUo/fBG+D5Kr6OpAcDluA=;
	h=To:Subject:From:Date:From;
	b=j9Scm94ip6LinTdHQ4hPLyMg59RShoLVmYOIBJfqcJc7m3gFO7wEZmWf1dVXoaZ+5
	 xnPTSxzY4vtutg27FTYyeRkXalAQVa69W4wXnaBUNS+mvT+DlLoSn8xpiFh9PEnO4J
	 LQalEcAANKNqrLVUGraGk6KSfaIcEpOJA9pabu9pKYRxHo90IXoA7GTC7HAq6RGSoI
	 fe5emF9VTG6udhIp5W57AHnxX9PuC90GoCFUsGFd2caG9e8FxIboKQbxw9Cw4YNbIQ
	 3RAgzYxmF/qPIuOdtkaaE6hlBbLxgMw2r0Uqzf776eYciWOU6l1P/wfbA9pP81bBAx
	 TNZPnzH90F8eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAA91C77B73
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 14:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168589074575.24277.6164550796726873633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51ca41e61781961aa95f8e26eced4becdf57f633250d20bdf54030f38e284e70
Date: Sun, 04 Jun 2023 14:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685890745
