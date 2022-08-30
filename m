Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6D3E7C
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 01:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74044C433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 01:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661823052;
	bh=1N9k/q3bKZVttJttHit8kI6Y3GJtbADvRZoKtJmgJUo=;
	h=To:Subject:From:Date:From;
	b=J1WvpqUimaNPe0qDvi4U+X4dsjTzoscD4VR1fXiaKYVyrgMy8caEOaHVD/6RiLeUO
	 A3pMCAxKxKlRTGGspea1VMeUKMkeLnDIWHrLNqkeTP0Kfs8wSlINirx8dA/JrQXDIA
	 xNhOLUDAjaoGDG7H8lffA/19f90Zx2nYYvMLMS/RQ68KYKWhFYbs1l7lJ36zfArcxb
	 GKwtGUFahLYLpBzsGk0XTeFY26CJDe7L2Tc06TJHe4QlwM6AHrndpjlJVttzHUcIID
	 CAemTyOVBkyC2we9Sq7T4xU9cTM6Q1G+3rzOFU5GDgKXNpXOykpIXqsm6mBESJ4SAY
	 q5K1EvRoK/ZCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53B9BECAAD3
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 01:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166182305233.24217.11964105563678151022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d00ae2fc81eec98034e0c154cd2b3d610c608c983fa02045771debfe0c031ad
Date: Tue, 30 Aug 2022 01:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661823052
