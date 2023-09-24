Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B26C1366
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 13:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD259C433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 13:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695561308;
	bh=wNc3fmr4fkGHuliLyjcMu2OzKSJVzQgqRxOFUK06Jo0=;
	h=To:Subject:From:Date:From;
	b=aYCfW926D8TuX8WAsbcGYuEOH2dA162w8/U63EQDCUVE37YWOlbwn1QTWW7N9bxoJ
	 zWMByeMiZRXnt9rP7pIubSYy0b1ppg9NeyLGme8r2k+5TbigC8/NlK3Zd3bQWbVwfG
	 3bOY6JOW1sl89f4C3IthEq1egh3iF1E7ayxbowA35Wwb2iOe7yzim4EjY4bvbppshD
	 czKnSloBeEc2b9RwvXWYUcz2hGW9JxkO7bH3rCwMuBPjioRkQa5dNo8CY1dFmI1nri
	 jilWvWA/jh4frZ+ZWd5oShR6BlFUM7iuimJd6hGuxLg/YFLFFaRVlI3CyO6Pxvmehh
	 Oo0LWxjubJSCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6BCCE7A8A
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 13:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169556130869.27555.9463943039524957410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bc3b7ee6039ce0bc5414cb8e7eb891f2ddb37bc4e8b8e01fcaf9db56dd27d87
Date: Sun, 24 Sep 2023 13:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695561308
