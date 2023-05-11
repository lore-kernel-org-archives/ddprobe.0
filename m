Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 506D71F939
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 13:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0016BC433D2
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 13:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683810246;
	bh=JcC3bTJ+GkbjC9Vv9uifRTl9yu0amNg+v0j0LCoj0gg=;
	h=To:Subject:From:Date:From;
	b=pNRrZM+8fQuh6DSd6EX9P+ciKI5zrd8BzekTFNVrGx5gD9hjX+QKZYLTJvGBghaod
	 v+HvsHEJsQk9sEXWz6+iLPZkdcwt7vfB2qHqTMISGoH6CvM5RJ891QHy1MS9zePHTm
	 LuAwH484bn5lBlsshq/GyQuip1a7UKvZNlIRQHjBM/LxGXyPjsqOCgUqHF5rRjFIss
	 XzgwZhw+kmLmvq8raoeqWk9oYPxvIfYxx8ObRG9F+Y/SF3jyyU6W+pOKbQQ+pRZCxK
	 e3DyvyDnp/zScARMAJvVvrHpmAreHnapjJhN0uniJQdFHM7XNYNwVFaRPudKyMA3Z/
	 IjKWbcBc9bdqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBD96C77B7C
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 13:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168381024588.7858.11350751003853110137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 221febef3330cd4411e07825f3487061f73de73e5a953a4596b867809b9745bc
Date: Thu, 11 May 2023 13:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683810245
