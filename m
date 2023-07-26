Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DEA24CE68
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 19:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBDE1C433C8
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 19:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690399328;
	bh=S19sfIKKMqLAzaR5PwITSnYD8zElVx0LlxKFFbPANI4=;
	h=To:Subject:From:Date:From;
	b=hsLFGBPzcSnLAqR9cKP9UXCmW2DH4UK2dolCdtUtmwp0JYKc8RxIOEHkMxWt8cyoH
	 GWYmeYnaff58RwQuXb/+dZox/ImEWesqMv95QmHsp0Mc9+jeX6rl6zY7m+2x2eD17w
	 B1y0t29baRBlCjDvWp981d/1zvQmYc9srcLrkTst8ZXzH8yGzmd025wMgddpvEQAKn
	 8k7kTYU0w0cIYiHGkzFNpK5MBcMyjAwfC9b+H8ys+z9OOOqSvYsuegnkhfrgAmG4bK
	 HaKzz+NmxPT04E44p1rj1lGP/nFwezy1t04JCiH/8JJnmtKR4qE85Mt8+LfoPE0Y8q
	 84j8YU+HcVjCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5DC5C001DC
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 19:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169039932866.24745.17251762020768836670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ef94cb7919c2545536ace054494207072259195964ffcb7542c041cb3683141
Date: Wed, 26 Jul 2023 19:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690399328
