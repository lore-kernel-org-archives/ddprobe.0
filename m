Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E27D17EA
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 07:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01662C433D2
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 07:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680505566;
	bh=+dUUxyqT8DiugbFHc8ACue3J8Ax/OHV6axRcuecimac=;
	h=To:Subject:From:Date:From;
	b=Zelwglsll3ICT4xaZS42CslD8OylKsGKmUMfiLxZ6BsL/a7UWRl+3DJqHyoVAsMwm
	 hI2dnQF7Gx1FQ2QVYPKYSjFaQkoRh+/xW+eAsgbxTxfLy5sM+nawon2bfbI92O8AAh
	 IF3WbGxEO7nkc/9c58culcAm3+O40u/cEYGrCxnSv8B7f1NhhA6Au3DxNXZjoZvs2g
	 8ZYzb40PDmWjInjvRiLQXWDJYGB+wYB17elceslONawKA1kcY5RZudv2pSqRqFaZYv
	 1UKApEvF6RJHAF1VXu4qOjYY9MAQ0DU5eYvZ8xyDH7Cj9XgnGupkcOOHq/wJS6DZgV
	 pPGv9wG2a7dww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE632C761A6
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 07:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168050556583.13570.10392361810993973663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f4d7ad7e27c27a28648669bf8267cdda7a3b1e01591a1058802f286b446ac6f
Date: Mon, 03 Apr 2023 07:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680505565
