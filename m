Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0448EBA41
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 19:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E188C433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 19:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673725887;
	bh=+qiCfKpCPlCg6slfg6UMr4HHaBPNB/jGnQ4Y35SCn48=;
	h=To:Subject:From:Date:From;
	b=TDs45vJFTfYMBGSIgNRKXvKJyS2Uvi3n2zBiK47drGlW+guVtAqem2RK+sKMyXNkZ
	 4S2Ikta4Z7lslLhp8+o31m6kuIZfAwhD+s58jo4J2t5f3ABMK9R17NFhsDcL1KjmGD
	 lpoKqvrtsDumCd9zLKmFfyCssbk6D7clL8BuflCp2kfLj7f4d5InZn093EhbEa+lyN
	 O8P+RVUW0UjSSyjNYpozTGWuPfdkxHM1Y/E8BOlj2KHmkQdC+phU3vrRR9ykzD1kor
	 j5uLNSo6c+1iMMQ9MBSxxfa6RoS9iIUw5z5jD0GP2oug6AYp2u1KxZqloC0XJeqx+x
	 ynBEi6mDGVGsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70FD4C3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 19:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167372588741.14859.14185553951876268162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 235dd5e3f742bf8f92583cf0fbe7f4972da191f4ba9e8148204f3ff179de8a2d
Date: Sat, 14 Jan 2023 19:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673725887
