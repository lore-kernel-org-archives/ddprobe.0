Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE9AE7E9
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 05:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8280CC433F0
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 05:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671426087;
	bh=LVi3KiTR2EDZAKdPWiSdBoOlp6Ig3vU50x6uPMAaSjc=;
	h=To:Subject:From:Date:From;
	b=RvWhPS0VYzRIWi85CcAug39bMmdrTVkZaTqS7j0bBU2h+pXclerBAEKCEtTF4qJbQ
	 X17WXvjXkcM8zd4whlZ8U3CBP+AP5ug7Kn0aHjoiuJmO0cld+Mc5O+fOG3HdMp4v3u
	 8DFqwJj0Mox/8OlcFOv/XuW5E/TW+iMtnuKaA6eKP4yrwW5bWSS0dWvKdCO3w1ztfN
	 Q3uZqSQytEKauuVamTXv8ClxtQAY8GnzuOFBKGeRCxDB96jxa/CgCV97ClzsDUoQhi
	 Lzpw8Qdtj/ai09JxCbo8L9YYII5o+1+10PeUkS0pNbjZGtTV+hiNSjW28A8zWeVaww
	 fNkSB7jbt3cxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 630ECC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 05:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167142608739.30639.12166472516004408534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebfd42a469e9930c302d1214fd4ef4bbd3eb99e8a238eb354d5af84b20ef04d6
Date: Mon, 19 Dec 2022 05:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671426087
