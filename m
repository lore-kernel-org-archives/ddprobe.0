Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B5FC1C2F
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 08:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFFE4C433C7
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 08:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688374568;
	bh=jREXfZK88wtOricF8LmHQ1I85d+a5YdLrquqiS5JwDc=;
	h=To:Subject:From:Date:From;
	b=MgPK7GCZPlgwd63OS1WPEo/nnEkv08EMyCRwDg0gVpjKMtUz0H0DlcJ/tz4B5BTyd
	 bc94V1RpZ4S4KBhLOr1U4dNeNqV2fKU1bmRyHaA/GdwIqty4wE982Ypdal5h2VDqMz
	 e0GNlX5fbwEYpZkZdHf8zGkNcMVmgsh/RqnrYhaL5IC1sjjgbuh2jW4ayfNQPZHPbF
	 UqDanrGL+ZL+XrAnynyAGpse4GN7gapjjquEPu/nLjYtRgWLscSYB19r8G0MJ99Txl
	 X74Pf0Iksy5GSjNwaJk5blj11dF3NETnXGlINcaRNfWa8YCPN8x55x87eLqzGsLu0b
	 R8/ZVLPXiVoIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1EEEEB64DC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 08:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168837456871.26664.11080631288753163566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 654a97e865c79b99fd8b3b17291ce30d380f1faf23f66ca7a955df21ca4e6ab4
Date: Mon, 03 Jul 2023 08:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688374568
