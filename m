Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4777F
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 02:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD671C433EF
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 02:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675736765;
	bh=jWcM8eMX6t3eqHXJDknL0xKo3HcvrhNvmRLEKv/K+Co=;
	h=To:Subject:From:Date:From;
	b=BSDLKXXz9DmQYariXXwoxCGNc0pp0rVRH4w3U6ZjWDaqZDW1qIq9pjTmSX+YUhSEP
	 iyWy6fxiKiQDfTpeHTviRyz8mvot/nSRejjNEo/5YaCnD8tp4U4y8+avfD9g9kLQRH
	 36ANXcMd/MWNQQ/rMEPSVgtGThRZQm1Olvgj2cJgAn2vQVvLjFLEUMFVSv6xgwkdqL
	 ZEL9emx0GBNL5GPTieYJV1+QfNhWezTGg+4iRjJg1tyEZAI/VfzPY5e2zACD1od8JR
	 RvFjHT+3iGmag2CCt90UQS3J2SZZwa9MYcpgfddDVQbp57WsGnCqwfuQPkprqDe2z6
	 SV7G6Vos+h1RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0688C05027
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 02:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167573676577.29805.270331901896820944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 792b36bcb704ee31b85f2586766d49631c7c837417a69c27f488d535e8d6212a
Date: Tue, 07 Feb 2023 02:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675736765
