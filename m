Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491BD2F58
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 16:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04960C433D2
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 16:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681576446;
	bh=Hw/DBielDbTE6aBl9XgAXPz7Tl8BUUHAoTjbUn75ges=;
	h=To:Subject:From:Date:From;
	b=DB8DX+Su2XLqH5UeruUlH+zUuz6SU199bBo5VYoETVkb6Lm2xu4o8QM1fvvT1euiG
	 NpQh+cNQMNahRPM5Um4h4fJ7IuhRq7dD1C0s2/By/JTAx8kKeKjyCSmaPXVhYLhs9W
	 pnxw6rgLv4FBZlrcySqLJJnThDJ+oYruXrn3viR5+O7//HFnNJ0nPTcdt8SiWv1aVp
	 s+3Gk6DweTAthoQBzZanJFouF+pxKvmWx2/sHOWXlkVlyy9p6rI5MZmml6tR3hEhHX
	 6qPGCyliJ0HRXbhTOG8lXf4UyeeYRgq2i3ESzqCBicOMCv5OtivPRvgXTcVH1vwXt8
	 X+i2rVF8+oxtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9079C7619A
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 16:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168157644587.12242.18396779536022866786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0042f68b0674a6cac1fec0cdccd53fdb00e1502d5e30d57c77bc500bbe116ce2
Date: Sat, 15 Apr 2023 16:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681576445
