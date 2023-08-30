Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F82746BD
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 13:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC86AC433C8
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 13:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693401248;
	bh=6G2N4TYSYR4Hm2GdaGpzD6ZC+XFRAnHsuxtE3VTmkbw=;
	h=To:Subject:From:Date:From;
	b=JuNMSJbd1eYhIwz5wI5M0+mFGoaNIwvpc0WbFMrOxs8P3wmqG09ve2VtmFxX7DlmJ
	 LKiVMtVUkIB+lq1yP5xsFL9PUP7eoIY2bUuvmJjCPs33FCqu0MNHpcWEznrKcFNVKu
	 VVZjwHDHtV9k6OHDQhxm1ID2byM3LnpMGYVztKLL5Hw2yrufrnoPm52VKLWnxnuCKo
	 MoHfI3Kn6uVtGfzGOlXST4aloxOcXSW6kcw6fPEAekatFmAXFPIeETtsd6TURfTUO2
	 hcHnyVWCwqWpnaoWs+BsO0PapqeVkwD/ppSpFh+LnkIPM19k7J4UHlTztFzM7WtXo5
	 8x4bV6bcJhNdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC47DC83F14
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 13:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169340124876.32197.18151819730799222413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b2514536fbbbb8219b7d6fa40cfebdded78b029d1beeb27badfacbab0b7a650
Date: Wed, 30 Aug 2023 13:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693401248
