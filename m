Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD8891389
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 04:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73BB5C433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665288053;
	bh=9NweJA1xM0PE1ylnKKRsl6zEL/xG1ABjgOFxaBWBXj0=;
	h=To:Subject:From:Date:From;
	b=BhpZLDQb1euNO90PwCfgMopqAdUTassAFReZiy0+TcIPmtU0LATxpv9Kz2gln/wGg
	 ePWIBcSrpjCpNAQQ4/MlDTcmz8xvRUFnzLhAWJhSelEZ5d1zyGseJM0sKyZH+VmB9b
	 LXkm8ABrEMWiU/beQTQtDvYmPUBabGhr46nIEQRkXNNBThj9E2aQEEDMJAnYVEFx6I
	 ULaOTopdiXwwGZFzinz+4v2LTABmZ46M717leHjSo2Q4m27x9kUkiUQp9NYPhP1jpx
	 mdM9rSC50iQgpgwYknywmVq8jEU1jw+1i6sSWruSCGH7ztK/eathSMvXXxEfPtZiia
	 5W+1w3IxKuLFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58E99C433F5
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 04:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166528805334.17041.18328593363251953624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3f03838e69d9f25130487b7c3feda878865bc792cf8f6d5877072fdd940e392
Date: Sun, 09 Oct 2022 04:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665288053
