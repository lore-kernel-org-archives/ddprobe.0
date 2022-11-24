Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEFB128EF
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 14:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70BBEC433C1
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 14:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669299054;
	bh=0ktAxwZZRAZZaZRyc1Jf56q9pG1Loo7qBtoaBNVStSI=;
	h=To:Subject:From:Date:From;
	b=nI/tJcFyMlaXZ9PX1DFO4YE4d6O5ZeMbUhMqsTivzTCmmXGzf1E6+2zjzxCVnCGzA
	 pY6d8Ke4CfYAm7PXb+GRDAyyI7d6voAlinG1aqkCE46A+2ju1SxD+GoKTO77Tffc+C
	 JslAunorRQassVdwITFCvH6iIKFzNIe2noROLNnXnJFuea8QYAVFac1nncUmGNRsv4
	 WGjnkeEaU5zMhLxJHT5K/wr/7OBHDU3bFGPpYmqtoA0/S6W0cUMGLZ0JdPI6TeqeO+
	 zZuTqjN9HoyaQ4TLLXhNsCS+DwOdZRU7riqYXY43mMCOB6b8i8gjON3wxCOePuRV66
	 XxrYJxF2u/I8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58511C43217
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 14:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166929905435.21557.9382161162614824834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d93e500453b324c408f9f58a4bf73b62f9a3ed52c644b93d68d0adc416abb850
Date: Thu, 24 Nov 2022 14:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669299054
