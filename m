Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8317E6
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 01:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E5FC433D2
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 01:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679966585;
	bh=8BB4DW93rbZ7+GvdP66g9hkTWM50AlEouwdPrb7XSIM=;
	h=To:Subject:From:Date:From;
	b=MbSypqAkWOtfqiI2PfQ+/cwVBH0XaGgD2ncExAN809WFFc1XHFi6MVys7KwKnwn8x
	 b6nEAH2VBtGEF5Zuv8OeOL6XeOfkG5ozx1cEwm6KrqEIMG+wRWGXNqfkj90DHbM5im
	 prh9CzA262y2gihSr4ocnlacGwUT+Dm8eYMytKtb0yZ9hHdpwu9Dcia6Mel4Q9rmzI
	 VJf6vJKjdFpTrOk1psOJgtcYuDUJqOMqzMYJe3q3QW+CdgVGiXeexLNM4hUTt+1l2B
	 izWvcHYq4ZKQ/JT1qepRfocy0b+Igwei9H23qHEBxr1kC9nm4oMeMWm1ft3tTl6EM8
	 CcP4/IhjOj3JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7B8AC6FD1D
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 01:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167996658574.4019.3514926355637728905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25fd0d371c87d10dfc16818822cb58fcc1a9583ce313ad41365c9fbda093eef1
Date: Tue, 28 Mar 2023 01:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679966585
