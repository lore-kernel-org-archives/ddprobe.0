Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 672C328E3
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 10:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 173C5C433EF
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 10:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678960806;
	bh=5Ivo9V7Ff3nQxo5aRBvv+d0Qf2Zhc1z1i/nCoLGYPm8=;
	h=To:Subject:From:Date:From;
	b=WwppY+YbAWU0YpC/x0ihKGMdkf3IsfVv+Y6/8qkYw6bclqanx6+0/JyXO9CxdR3Dc
	 e6xLXUTAYmTHxZK5f6UUgCNZE/pKlicBA/Vh2kz0mfynjeZNpsAtp72YI+rLrObSbH
	 ipp4RwMsWCEgtA7KOgZPYM1pL6iABFbx7uK6WcLqoqRWwSDzIG+meoo/rKaPPEQBQA
	 nW8okScidMdyJuSW1GubLxY1EaGISx6Eo1UnPWBFRTeOuhhfCx0FDCoz3QEX+Wrk4K
	 bVrTAvHgs8vQpNKO7ecbf6oYXk9Lq3UZ4FTarqJtHd97rAF+cuKf0KMpZIKwtNpqeL
	 vsvQiP/ReuGUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E075AC6FD19
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 10:00:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167896080590.18654.2248041887431522671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdadfc2ecc0d0757e57d98a2711f4bfc4b35cb01034ba9a542378813c36e08f5
Date: Thu, 16 Mar 2023 10:00:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678960805
