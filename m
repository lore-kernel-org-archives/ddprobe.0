Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5FB580A
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 06:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A4E8C433D7
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 06:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668232854;
	bh=5yjshK/Cr8SqHXlRAI8Uqm40Ph9DXWR6par+8W1GI0k=;
	h=To:Subject:From:Date:From;
	b=SAvtMaq/KeMrVuH/V5HoB8BFAOSe9N1qPimaKiOgR4HJeeguvgvcOHvhvVGnhACQ+
	 0Xig+UzVS2l7QLiwdf/szB0BFFOgDhg/u/F+XjR9kWrO6eRb4yMEJ5V6YS5uUXw/cV
	 Rnx4dGtxkU3lR00L+hX5nWV927emycVKlx8Z5DssArLhgWUfMacot4odSgMGYk161K
	 RLmkuL+NK21tV4g7fN/Vb2C75RwAASz+QqgMVAnKSeRJq9roRKNtuwKpRVAUbVDRhQ
	 a47giNPCrST8Q12KNk59qpAMtUx3Od0GspUf653DXwgy+YAbMXCE4LznQPwZuchs+z
	 YcUlhrIp8D2AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63A89C433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 06:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166823285439.30112.12399103571290735963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2811a92cdf8b87cb26e991a73bb5ed5d16c8cb34b775bccf376fd6afe341321e
Date: Sat, 12 Nov 2022 06:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668232854
