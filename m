Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1CC823C7
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 14:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91E0CC433EF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 14:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673879487;
	bh=3zX4NTRzFVsiFL8hPAOCdIM7Usy0pTSnev9wTgoqjzA=;
	h=To:Subject:From:Date:From;
	b=dErQ0ul3EK5ASmEhxyDI520MBzUs4vk2iCUXTTGXGgWCUFVev6gQmDvPF4U66I9vS
	 /OuPecc7l00g0FLUAJzWHmCXrE8Xz5E5L10woiiClh35qW9UF8X5Auj1l/oYWyY1i0
	 uLax2uU8g7IsjrKuoxRYAkneERXeYpVsUKfkxvg1QSkLd/GFcxzLO/sZ/z7ulyBg8C
	 JLiFKHe7aN57CGaymk7bL9Vgz+QVb483usFU9UTfqggZ6mI1l3DBKyJ5lZrX1AqmTO
	 SCNVWUMcNN/XWEI5b9zKf+v7D01JvAmdI+1ySL+FoMvvGVtOqPYXViGOx7aG98D1D2
	 +iyMy6+ZpGxgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6950FC46467
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 14:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167387948741.4510.13524607831227951018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b81ef7715851d4716351ca810de459c7704d46c56be878f40af5cffa166f1750
Date: Mon, 16 Jan 2023 14:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673879487
