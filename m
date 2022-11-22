Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2620107A1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 17:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76820C433D6
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 17:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669138854;
	bh=btEsGzCwpRSdB07cml7+iAJxyLja0FajaiGal10TuVI=;
	h=To:Subject:From:Date:From;
	b=aqIvZj4W8qcrUpMbqbwEKe7R9u90YPCl6M4TKScYJj3vvtOZ8dzAnLCJ7fX8cT5gd
	 hp6e9Ok+pnwIK39lHMrw1lGc73BHJbY/Ota/8MYyzczTQqjLhE4UWo7RTv3c31qOWn
	 edt3G+DdnExP2pc1+PtKtftH+GlS6wwh30ZqW60zRVk8Kt3/erEtai4gcWVCjBxjzS
	 j10+C/v8So/N9y94dKkBwl3Zg5Wo1d+8fWl5ni2k91VJIQYJIGwjgAEuTKgZqOiQ7D
	 hg2EqtZmHFTGZ8CxBrY3W3s7HKRtksMf+y234kd6Ph/5hhfhWsiCOYk2z5XV2ae5LF
	 4p/UY48PaON1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56557C4332F
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 17:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166913885434.5987.3755007539236137984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bba026c548b822214bacbb62df5169d9ceab0ca606e469dcdf128a51027479fe
Date: Tue, 22 Nov 2022 17:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669138854
