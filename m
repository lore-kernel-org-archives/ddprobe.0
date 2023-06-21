Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 757B2C8E2
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 09:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C2EC433C8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 09:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687341188;
	bh=Aq0Hj9v8xYS4KO3CQ6VtVXcCXXWY4cK7Ea5N0OVkSr0=;
	h=To:Subject:From:Date:From;
	b=bU6slwTG07Tot0iWFWZ/R8Rs70OiNG6A/kgUPbm3PBi/8LizH+Fg7kh59Rz3xFmn1
	 s0OIAyPEHOEMw5iRWsKaeKnL/zZAisO5CYWGllsNexfFGzE/FGiGLflz5DrFa34gQz
	 gRSbh72ARLUzoSFT9CmH0v2kv/ICX8HE9zipH4cJETWnWO6fAxJeh4YGnmnuGFjfDU
	 vy3y+aW9JmX65di25X4J7z+PpR0/T852C+vm5f70CNh2KiLXcFZK1/XC1G2EZm93QD
	 bfDlLQXlnG5VzNifPX0lxVM7C+8FUTZ1VUwpfYOX4IPv14Hz2VQfJX/z+qxImNWCCu
	 dAnzHdJfpy4nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBC8BEB64D8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 09:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168734118875.17930.8718666357506211562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d32de284eb766b7e7977767e7cf9181c60575d9b11270160a5e2def2c23b7576
Date: Wed, 21 Jun 2023 09:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687341188
