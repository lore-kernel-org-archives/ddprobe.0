Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3C731C7B7C
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726412753; cv=none; b=BJE6erjWrMQYHS4ymxZbdyyaE25tXnUgIY8cE+/0WgyhqylWTx7IE52zBr3ttqkytf9kpNsiogWAIGWSDn8AkrFPHFjWCh9QbIK+vVn3NJPWiPtsKHUsgGMsXkR7MJJv5e2Dyo02kjRA7c5qcAajs2fx4nqQvAgT0OPSwymo/7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726412753; c=relaxed/simple;
	bh=IZaLddtSi9vuk/vY0jzHEpMstuBaeRpCgVsN0ggaM2E=;
	h=To:Subject:From:Message-Id:Date; b=A16e6Wr5935Z634NrHHHwRHi/G/R4w6runXhqbOG4B56TGjaARL21+b2+xGwDvsZoxLJQtyStIZZ4XcRALg9PepqGVZS6RuTn2Lutf4zMe4K9CnMC+mCVohVN3zMyqPr2EuIdHc94l4GI7JDwL1kFksE2tGaBMiHjgMH+py738A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQRSnfPW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQRSnfPW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B3FC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726412753;
	bh=IZaLddtSi9vuk/vY0jzHEpMstuBaeRpCgVsN0ggaM2E=;
	h=To:Subject:From:Date:From;
	b=FQRSnfPWSUNkMfjMMgbYAVmFW18QU5F95dYFMA4QgJ7+3OvhU8HsPWsc6V4yENC5I
	 A5nFuqBNT7yQrCi3mzBpP/6qpZt0zcv4WU8qsKoRGAoGxIBDuUCZxGFojrOpEyRfGx
	 d0kFqq3xYae8w6F+N9QLCOA38MAPyv9bUb68Zk0R3WCKU575sF2g1PxE+FEovhvuG1
	 wy2VEH9rb1lgSJjB0fdZJOZb8SuS/WFf5Q3SSAMJTkSa63poxnhvlg7iXqGOoBmoTJ
	 yNUbNBnh/rSwMrmjGkWWZscItKvIYRzNqzO6fMGzZ9wkghBsayQwAccUPWm9imYIRA
	 wRxW2CvHH4jfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CA6C3ABA1
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172641275359.5862.511040944382841877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3664ec0c416c2f9aaaa2654a6009713182456fae7e4b9d49561f479d449c398b
Date: Sun, 15 Sep 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726412753
