Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556597E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 16:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCA50C433D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 16:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674317525;
	bh=kxIl8xjAc7kRkv0q4t3BJ+5pzP+7WKe9333lwdSgUOY=;
	h=To:Subject:From:Date:From;
	b=c+UJpsxr/UTd2FjQLbF5nfEg7wHivM49Q/YRjSWnn+UuJtQ2HOQCa+pr0VamFm1dK
	 jinkgBWYq1LU0YIUJGE7kcN06qTuv9BiZE0erqDcjonZf0eBgmI8lnFPVIy53uJwQ0
	 fFk8KJOXg/PS/89zwEE0klZiT6Ttgzf85EPL/0CV10lEAk5x5DssB0Gf6HlJfq/EXM
	 6Ls2GstZBJQwu51OjEUUO83m/lDcn8PrkYUMT8X/e1ajqpH6wSOMiXgkBsaMeWMPMX
	 oqQQvZGwDdl7QkJFDpACAa/3bPj7yMTeE3q+SK5iPi+EzVk45jercqwcBmlaTAHZn0
	 kB2e+xsw6OqZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C28F6C004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 16:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167431752577.7841.790542791214903066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94adf8e4ca444d250d757723d7ae2bc6baf7348e9dad100128667f64d1af8105
Date: Sat, 21 Jan 2023 16:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674317525
