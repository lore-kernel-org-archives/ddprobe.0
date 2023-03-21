Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CF22FB3
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 10:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E01E9C4339B
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 10:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679396285;
	bh=UNiiL+A4GrEBOQib6xI1EPFPfKOrJirHwyFvqteHjgY=;
	h=To:Subject:From:Date:From;
	b=EQcR86DSQgQ7ohEn6d9u7jH3e9/6fZccMqJdEYWK6KajXKL8r2aUqvjU5JQ+Q9J8K
	 EDYhccVRmMizQApF4YfB2IYcf4qsUjMF6QON6yKZGsn4u2V6b15UVRNHLwo9cOvmXu
	 lt7QV1nSr1Fs8x34sPYH/Q4NfMBni0yZ23gkj93rYhQlpJuVDrOPvNmezYIKCPjdoc
	 Iq+xeKmVel/KbIz4xqqb8l64NJhwMUMzhiVRmXK+JTGtvUllr+0NG8xWeLFqjp40Po
	 tuYaz5tz8Xd7qafSLya4jbnXKfWRJnZN5y5gBfRoKEj/WIPPMmIwmLmmbcW4gLc4y+
	 v5ylRBJyeVEvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3C40C74A5B
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 10:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167939628579.21869.17032356381391136930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45029e0b2d291fac93cd998617332e0d09864b7ad485b1f18f97639d08293b18
Date: Tue, 21 Mar 2023 10:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679396285
