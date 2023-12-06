Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E94206F63A
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xz1rLGIk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BAC3C433CA
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701893896;
	bh=2CLB8z12EoYi4xxAQaiNWTx+tTrGcXbyi8RVDKXi9gM=;
	h=To:Subject:From:Date:From;
	b=Xz1rLGIkKWa9/aqdNp3PZ6CfUoWCSK+8bUusmB/+agN7f/HVdTsKfH9AlH1glMXJb
	 dv+KyVpI+3NKZ0x5DpQfUY9HJTEhwP1nLPzV3FBzAx13r2AlsluqzRs3+nRVOYFl51
	 cMXOD7uZ3ljOqLAGRJ4Kz1BruBxYm4oxku8qa0Rfw+xLulrzjF4gpKyFtHIcCfEKJ6
	 xlFiH1jHQMCtQN9nmBIABQirv6p5jp7HoDCya6FEi09Mc6V4YYRbz+2ID887L1EwSu
	 4nB55dKQMwsm3aGX/IZTpUxqr9um1OPlaCvW/oZhnRir2LNdIweyrZp7CyJ8UK8JAD
	 TwHIX18nq7kVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63918C4167B
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170189389640.29828.4371507318189112732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbfb86832f72532ce1e7378588cafc478b78106d632303a2a5b05ecaad08a901
Date: Wed, 06 Dec 2023 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701893896
