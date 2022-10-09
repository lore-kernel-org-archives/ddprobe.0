Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7F107E
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 02:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7774AC433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665281453;
	bh=bRRfV+N1LPQWR34gfK60OF4qRBo4EGl2XbLBFQAfERE=;
	h=To:Subject:From:Date:From;
	b=aqgLpM+GfAg/mSzX5YVXj5/3qUlVUYRz+43YQIWGyiZA7X23VL/sBmRLbpn6/8Dr1
	 +NGXgzlGe3em6sLspE4UGU8eH7mwdh6hHqrB5QRst+BqahJLFptK+GqZuadDuRCOBf
	 rvas8Glo3/JVYRlyGecnSK/jH/EYom1fFtjHQyPt/+sq7Z0ob2wxHR6DTpYfJUtWgn
	 0c/5ZjUhqcD5FKY9IZKIC64xmSzyvIA1wLjWE/1B1HRA/3VsXk8t68liPONoZZW1wo
	 P8jq6Jv5pAXUbGUhtZcpXjarE5VD/soyalCtwb1IZUg8IwvaS0FYOFDwmItJrtfumv
	 jjHLMoeDr/1yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A140C433F5
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 02:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166528145335.660.451566418121433166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd9a17ccf4a5135fcbe4991ee3ee2c5e928c92f103e37cf05b76259ae8754df5
Date: Sun, 09 Oct 2022 02:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665281453
