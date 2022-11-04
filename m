Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C82E71C10
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 14:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 720CEC433C1
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 14:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667572854;
	bh=J+DXBl8ANSBgHk/WRGMhzB9VFJRvO3Rp3uiJcjtEplg=;
	h=To:Subject:From:Date:From;
	b=Z+8CpExdjufhfPbl6yr++KvTu46OlB3catBl5XIUjOn3WvXBn8Z3PzO1lO9b6E+oe
	 Jnl0H402ulp9P7KmtcVqmdAlQzssaNt5Xc8Pwq4RmAlGC8gBqXOn9zu0SbvjYRgw6I
	 knxlF2Z8wEXkAydxl0QR6WnmBin0Wy32VlqLvhoKNcI5uLYhIto3bqY5cMeHxnSQxo
	 95a3LsjzIx4lV7uClM/cc03n7t1OJUmIYqZKyEs8IKvNzwuMxf0ni1TE+O2oxiOlZM
	 I7gJCPldgxUm7wb6wuGxVL3TFKt8ZzlL6lIQHQ+K5bNR8IfSRWJpAX0xK+05Eat/nn
	 zl5NXeznm2dOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A52AC43219
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 14:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166757285436.20029.6332351779438834114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e02773e65a0afc25682c3d0c232bc1d9a5198b12681ea018afa5cb470d7b2dc
Date: Fri, 04 Nov 2022 14:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667572854
