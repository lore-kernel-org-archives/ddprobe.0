Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516D717D8
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 05:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED4B7C433EF
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 05:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683439086;
	bh=IYfMqHdUXVTP7aW+ODZIbvotpwEV+V6nvcTC4kI7lO4=;
	h=To:Subject:From:Date:From;
	b=Yta/vPGb0VMEpDbOv8/IArQc7ywc4Y7P/uiDuXgddGHdsCnoEhzlFTJ15vwwcPQoa
	 yimrX2ajebtj2mlme+8A7aBK6hnha0DVsuewfl6rO/E2Ly06CZFvtjXTTzS2axVQVj
	 c03dMAm3Fp32tIfCGOIMScYftjYl0q+gg0qmkajDhWLgFFZLDHHSVyWUAG/QWQ7o7n
	 7ylAVTZNFjMRMTwr+nP3pQqqYAKyL5Gw4osWxV6QzC/w/mTftFYaDawckhpr8y40fv
	 bmLz+UkXN5IYE0eKH+5JbbqkqNabMHPh2pSkE9KDs5H0N8Gtu7ztzQ1NaopaDRaeUl
	 c7a3p3nWZ2MBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDD40C77B7D
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 05:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168343908580.14271.8408403568670075672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f401d748c1ba223bf5c631689f01f47c6cfc7d9a1bb3ea138a958b7f8605252
Date: Sun, 07 May 2023 05:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683439085
