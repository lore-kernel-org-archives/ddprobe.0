Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432A6803
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 04:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E67DBC433EF
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 04:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684642805;
	bh=dzScB3WWWttQBD4lvozNdii4qXIundIXJ9AMFskVHmU=;
	h=To:Subject:From:Date:From;
	b=cGq7T81wXxZwrZnwW30BjuZ76c88D0fKj1YX3i3V83CfHACSQgR97DXwSgfabGpUu
	 ooja02lkt7a1+Rh6jSZXnz4vVk0nSonfAoNLQKy7T3LG0Ib9fLT+Dr7JkxznZ4nmtV
	 OjD3sU4GWkDtQmA9ymtqM+0EMGXqyBrL66hiS3F4g7S85vZemI/eE29YfYHMKM/yPw
	 nQN+K8N9LYaehtwssC+F8PdWEseYSh37p3F6nbYmaPgUC4MJekqq8gf8oMWohfP9FQ
	 ulgNlasNR8SbB/mpNGTAXMN07RT7mxcgwCisitNce5du0Uewc8Zfs+26v6mDDMeC3J
	 CwrH/Dabfz0ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5FCDC77B7C
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 04:20:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168464280576.1317.15342708971520052912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bb5801a49da184670f8903ba27455d6008c3d767ae1d504dc3f5970d6c70a33
Date: Sun, 21 May 2023 04:20:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684642805
