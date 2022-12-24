Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9EFC2F3B
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 14:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A99DC433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 14:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671891087;
	bh=SnBOU5Pnb5aYrF3YxHnZOOSehMICDGtKDSemT7XVM0s=;
	h=To:Subject:From:Date:From;
	b=ajiRUs9kVzFDvCfd4m7sQw9GNTKy2521T9E7R4CUkbimmjmpXyvMIqwGbS8ryU/xV
	 WQ3U+Leh9XtH6dEaC2V36x6z2eNLCSj4WbEhAbpWT4cjmOcslUsGjajwQrKFWciWzp
	 OnfdszWKzOHoJiZDeyh9eYVtf3vD+heQmu1NOFl69HHFtlfrQpJc0lYcw8rCfUp4cS
	 3aUiM9XKSRzuRArQlV/Ih36UC9qVu1MuV+/XnRR8a04LovPvB1gwTcxZDy7gi9M+MM
	 WeirlT+PK3u+PHF0eI7aLyzdH6N3Cz4TFVgdgh6OwtRTSUfqOINEbl5F5qkDD7Q3VP
	 1YTwkL+5wgcBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E12DC4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 14:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167189108744.1802.8748400624308951105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea4fb418f87b98cd0aad96ab6058d6288573b39855d00f7bb7f2fb5b6e102166
Date: Sat, 24 Dec 2022 14:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671891087
