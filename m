Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126E315AC
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDsmOXhc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91543C433C8
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699662496;
	bh=mJqARem0FDGrbuzHya+qTUscxrEeXkEEX7jg6wG1TV8=;
	h=To:Subject:From:Date:From;
	b=hDsmOXhcCLKQtXVV6knNQz5169gkOKuZWnbsd+cADJEGWZ7MU9YbW/EV+Ytje9fXV
	 TGIkhciGEA4kJyp97ha6LNY8jB1P4REke/ZGej3Pgh+C9EDpQu09Cb79UpvlxH/ySL
	 lDcrwTDLkR7vBbK2feQ2pWW603Irtg0slxl/5KO4IaBQXM0pishjEgLIszTgKEluG5
	 e6bSrHV2hcTriR7sFWMOrCS/noxAj8A2Q9EJEN/MBdCo9S8hDzCjGJffDa0ywbvSDn
	 50ukouu39jdWCWQgwISyPb4xUmj3b+bVyje8aM68Vd5lTVxLlfT+wNrlR8z6bEKmqo
	 V88guhfP56SXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D2EBC4332F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169966249640.6127.6863112355248536540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d457136bdd0f5f2f2204aaf6eb9f0f02a4c28925bf52998f00c76d6673c4eca
Date: Sat, 11 Nov 2023 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699662496
