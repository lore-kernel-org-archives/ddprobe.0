Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3A4A79C0
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 19:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74DD6C433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 19:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669836054;
	bh=qMz+85PC3BsYcFpXQHBog+jM8Mzbmo6GIkPuEmDqUVM=;
	h=To:Subject:From:Date:From;
	b=C+02mX1keAxLY89WM6qATRVVa8x4/mko3i+ADDIEW+X1VRvzZ+2PeCmkvi2qR3nk0
	 cJkHPGbXeX87fRoR7qXmsigZASX65e3KTOVVgFQ794mGuKX+USM6EJ23h2Yobz0FDw
	 YVLYTVZobWi5thyBcrAB+m1mx02ZshOcK5ncXlUQ7yCF3E4CHT1dH0AI3rIWE+h+Zv
	 AbYL4fqGZBHJ9kcMp/31c2bOm7NaWfRTOWU9fGjWK/s5Q/JVyNUdAutDDqbutehspg
	 bGH4qXrPcK9sn1BG7ap0dUG8xbfPRqz9ttrttkjRqBtwAJU5zVSYiNnos/EZjHFgv1
	 0/oGSjAo0GdGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A01CC4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 19:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166983605435.3274.13749875112071119934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e55425ee4c5463ac964a0f626e6a24e12dd119dfd2c00ae6a361ed3f8aaff0a
Date: Wed, 30 Nov 2022 19:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669836054
