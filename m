Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C3E7A21
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lVQ4wKPH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84896C433C7
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701672496;
	bh=1T2ANCVX8NST98u18mKISA5WTgQwxGIqfGmlqDwD7Rg=;
	h=To:Subject:From:Date:From;
	b=lVQ4wKPH2RimrIEVgGwqj6XPW62+L4qLzcOY5BZDb9HKMQ0b1mJzd2HIvLOvZ4tVC
	 6Lrr+9c+sMgYvX935yctW/zCvbvXnskuKJjxvwjphJBTOEwfXazI3f6JxtcmQZBtJn
	 aOOspgk+r7eJrBfrHuE0A+okWeQv/A6TkafNKL7RxgXwoeM1Tbh/6Q1XsiLGLq+G3M
	 xF0bqTCEvQlDqPTbYNLJt+YN0mzFjQy6b4Zi6Bz7buNFqMPiCpBrYxGP54PWEtJ2a0
	 iUclLYC3kFOgvBARYrDcZAvy8gObsf7MbPR2VXQ++qzC2kT6/o1THWW9dEUTwtvhVK
	 vbIzmp3jZqkzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67BDCC4167B
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170167249638.23131.5755366425906072695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9383586ed85c53b8e62f4c2a56ba46edbf920a2db355e8fb5968d5478a25b0c1
Date: Mon, 04 Dec 2023 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701672496
