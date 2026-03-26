Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0942734B1A7
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774501494; cv=none; b=oC/DaNNLf4Pz6nREqUOjfPpsEJduEhEXL1z/SXd7sX6/EhUuEUAJV5hRImptIvev8YjnTWtkvVXZe+0twqVHkU0DOeSFTvZVoJ1pISxPFtzJ9k4T7IEWXXMu94HqSAKIgnTXMj7lwU3BgzjXSispidgcmWVH/u+mYJDD/YkacqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774501494; c=relaxed/simple;
	bh=vIVLADHjSp/jAKFyMoB9jokhxTGJ7TfwZO78zGqzZes=;
	h=To:Subject:From:Message-Id:Date; b=PLNNFSEeH7KI9sjF5rK+Nj49zO6ZG1CsWwrq/cBpNjpftiGsdgQO3fRT5KmxclW7/6O59Z7tIpv3Zi5XrCbswHTdMmKFB9LLMBHkY7CRN12PZpRA7nGzMX1a++mwKZiZ1dQrPfgsg83y2VzVUEls0njFNqCkKzI/xeB8ONUSEOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LW/2IfxY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LW/2IfxY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BB0C19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774501493;
	bh=vIVLADHjSp/jAKFyMoB9jokhxTGJ7TfwZO78zGqzZes=;
	h=To:Subject:From:Date:From;
	b=LW/2IfxYzIVc5OfveGm7Mlod81FQJl9Oxc9DRYc/PUZ5awyZtuzskr9F6lhYFqjaq
	 4fSnej/5YwA86wWzYu/qvXP5+BfQj9HVvHUNw+K1KqMCrI3SY7d8VhCRQNraHYkHG5
	 B9YFaq22ux9HAyq1PFkiGASqOaVKAyyGopJ6AdJgL3Gx7smtj/daocVjnuuuyqrNOe
	 YZQMlldA1SFkH4Auk0NxoZRbDaCV21QCJagH6rpo+6KA4zwIelCV377eCW3EQ5AEs/
	 awykjFXw0YgfrPhnx5RysQX05mHtpBoVV829fDK4YJ1TzeJ9JSwvBg6rATaEShy1+x
	 Qc0k+2fMiSXGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922B6109E54D
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177450149358.29101.9807046729003946841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92df659fa00617644109589d2072670639a65f27cc338c6552e55e11798ae3ba
Date: Thu, 26 Mar 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774501493
