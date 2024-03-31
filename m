Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E18D8146D74
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711920497; cv=none; b=pANzxAw2A+9S7P57zpJWIBaKa/oB2NGutH6UJYArUu6EHX31AdaAW8px/6Zi9XgH2V5ZIYtbJFINIdUUU5U1cPgjVBGzwDuNmv0p3g2eDl9mprZwacKTpb6SEJMhpONUdV6a44AqCgLHjJm0g2NHVaX/vQBQ5D1GBoJ0IzVOIRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711920497; c=relaxed/simple;
	bh=r53zr2a3OC1g+Y1QFD/Z38TRPYrmLYTkaD1J8XExEyA=;
	h=To:Subject:From:Message-Id:Date; b=QheZzndBy4Sh3zJiJd9BhAYW1kyueYoQy6V4uSOQsemyf5Cn7B2m/Qqp1YUkvdtFh0wZqANA/TidpCFFXAOjBRPFuHrG8PMqi4mw9i9ZNGHFSyzTLdPIP2Q27j1sqmVMyuZXc4nTJb1WIfGENeBc3NrYsDfL6BpZ3rZCci1JlAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qecQa0cS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qecQa0cS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79B61C433F1
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711920496;
	bh=r53zr2a3OC1g+Y1QFD/Z38TRPYrmLYTkaD1J8XExEyA=;
	h=To:Subject:From:Date:From;
	b=qecQa0cSQOl5wtgRVI5AaGC9DSNzPEAhc7dqxcxM9UpmLLCwMJapbBP2rgFkSZ8gp
	 Yf84oos1Cn/E+AoVhWnN3vNUTWr/YYDZ3mfqT0etYW6hrA8Teq3dYCbr5jVxGfwlJO
	 ZWdV4muU08SDmprlyTC/AR3Wze9TODdjsnXF4ke5iUeNlxynV6+O3HqbNSI0mE3BVi
	 F1ReWCkEhL+5Xj1AS2WMsRiyrMWoguvSZJxiKXbGeIKoPPDqyF7rKFvkv8e+YELVjP
	 y1kkACepxcw35DmQ/SkMC8vVqvt3jMdWNA+ZL2budObTyQv78bnW9Sw1HwKNZjPnjl
	 Fx4P9Ds42kLPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62277CD128A
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171192049637.32640.3693664646962901193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbf9bf6a693e68f10300ecff3b627297b2943095a792315cca61da99d1f002cf
Date: Sun, 31 Mar 2024 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711920496
