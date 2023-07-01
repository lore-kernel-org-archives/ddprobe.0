Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A24E15A5
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 16:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD443C433C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 16:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688230448;
	bh=PO5RadwNoah1aVnJFKhwITTqXIQ609NcmqB4u4UYCmw=;
	h=To:Subject:From:Date:From;
	b=fwTGScDdSzcKrNu/KpjR0XGAyNajnu4pIv06V3m4EA4xIXEFM+LM5CmVTqCzECbEa
	 RlbD1a1WbwY46GgPJr+msJMRFLIKC4uwxW3Me5tSCfgbEY68OQg8e51McqnldJpkFN
	 K1ZryTtQSMAEP1UHDnb7MOW4vOhOKsgfwa6fmunY/YJTK9tXff4pDRiD9DYRJO4Npw
	 /TUU7rSSZf0SeWIspP374yd37aOyt7bMW9COG4vK7RGJ3Sc6R5LI1WHUpxVB6wbuBV
	 dn+6G+fi3m3CCviMOrN/Z5AlF0P2LugfjCranx7HGXbtAb3JVk7sMd8VPZ5s1WV9hI
	 fy7FHy1Nc+73Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB055EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 16:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168823044869.13836.15033544390388775044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 167eaec351e335c0afb6845ddf9fcef3128f89932f7e86a280bf6c05fde85fc4
Date: Sat, 01 Jul 2023 16:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688230448
