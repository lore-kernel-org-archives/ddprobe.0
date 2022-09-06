Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C40A93D88
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 11:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 671ADC433D7
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662463253;
	bh=tuDDjMOu+j9+tXVt+RE8EhOyQxvIq/bm8h1Pdxq17xc=;
	h=To:Subject:From:Date:From;
	b=TNKzGTCTYp7XT3ppDM2UCw1LOi2cXgnWO03vl1C5sBHzknSlg78lNePNMWeoM70pu
	 xuqUxhwXLdx/m2qOZ7gGxio+CQo0hrxy2gmNJy+pRQxUkqMTXsLiGsO8ytFZO9TQiI
	 gySwPHE+j8JNRRRJSO3QctCIeBWqfDdawzW2Or9RhxVqxp1M5gudqT8paN5e7NOQKs
	 zHUVr4u27mye4uKGQHkAAORR82L4CHb5ymzzQArS0UxcqPCHVCa0lJBgySEHRlUi03
	 45pE4pn3bxDJV1ugogL99EEQY/JJKib/toBoGlEvzkpnmRtjB3bq4zgPZm0Dlj+52c
	 Rca8WlrgxnjCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DBEAECAAD5
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166246325331.12507.6447944371848636031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ceba17aeb41a5bf1fbdc3a88b119f4b485194f29b80e5bf68a0901d08f1aec0
Date: Tue, 06 Sep 2022 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662463253
