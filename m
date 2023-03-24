Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236C85388
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 10:41:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8B8C433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 10:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679654465;
	bh=z29CLxmGVYY2aRNtDsz4OYDpd7wQwwCZXiSDxNMN6MU=;
	h=To:Subject:From:Date:From;
	b=SBWksrPZ8KMDiz4D4L3csMw3UCxExlcdh9aNHANnQ5TXzy9jYrvpbi2AsP/stMND+
	 6ZlvYD7Nv7OpTAwGW1dQLFkrYhOjiIjXjF4idMUu+3Svpiw3u2nXOdXc1rqfrOdJKC
	 /TVh4ySEfK3ROd/iknhUFnP86gySzv/bHP7tbVDbDnPKi/74a3GaRR9MVk84p4mGpi
	 T6aBy+Qt2YWk9qHKHMpzgFIHDUFZp4LBGew9pMkGgeCSSYGGQL8TXV0+vsxr4N8zd8
	 /AWxvmwKbhafwResTsTp7Lap0SyCL9no8ic5DYwqathwcW3VOiBgEQ3DsGQKZ3I3GG
	 HZ2fu8Vewcgqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5E18C6FD20
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 10:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167965446573.13823.13356554154736955883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8be26a057854f5c84489f5b57ed9c1122c79ff775fdb7ad351aa7c6e59db4eda
Date: Fri, 24 Mar 2023 10:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679654465
