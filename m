Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F4841F16B
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 11:15:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A57C433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 11:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695381308;
	bh=xExY7oh22zUPUExT0cKWcm4de67/nZBGN55bFfZqaJs=;
	h=To:Subject:From:Date:From;
	b=K6t8A52CisrMgtjRXs/wfRRqbLFsX1UukL2gO0BtHkm3QyzkIwxas28GwbXafWEA3
	 0AxgTNkJHISqrHfFauM5uoqGclH3XqqUCWKxzHqgBoPtrGoNj2YZObMYQGYXi7+05A
	 o61j5+I53Fro23SvmRXW/9sC1G6v9gv4x4ZL3Rx2T6Xdzxsklv55RKYj+RUNQv+S24
	 /2fhqTHTEPLQ4l2jytCmQsO1Wzu6curv8bMXg41nPPmzuqX0hzMxCySxci9CoyRpJU
	 t2HWGNUSvA2MyIEF264mcFRxDGy4W5RpnToN4woZkau1TarzIGpIOu6Gr6c4dWfvaK
	 pcU6Px/kvnUxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C8BCD4F57
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 11:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169538130868.15870.9523650824306852968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee724f7eafadf506cba8218a31a998354cf6b35277aaab35c037037820a59ac0
Date: Fri, 22 Sep 2023 11:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695381308
