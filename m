Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF26928E8
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 11:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 665C1C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662290453;
	bh=U/SEo4A1aFN2kgQAjxt+eCKv70TVvQurzN5y0USD8GI=;
	h=To:Subject:From:Date:From;
	b=dEXGyfu43ekNeK72bivYcSzwBDEUjwaaLshzn6IPhhEAopFisSHoPKizLrek3qN29
	 jFXcp3q6mx2w0k8sk4P2oeYQA5zRwTxrlGXKN9RVqGjps7eTkapSt69dSHKQnDYdFu
	 B9c7QvIbytUTKBgWMj9ZRqEGIo/OTEYjp7pb81Rj/F2HkX5A/2aOA/cRc4bCU69h0x
	 yD8LZpywj3f1++095aK9sbaK9dzqowyeCVysjfzal9r/1fLSWLyUWKfPPknwUyzXvH
	 m6uGkRI57WnZPvZKCoJvKc6NZRu9PNWJFdoZRSJPUiokLATTkiBhm0ffM1qmkd2FSe
	 ZU5/Dq6Kfg7rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F2D7ECAAD3
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166229045331.772.7239706227592560889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6595d6f35d8bb2568719960d7755a4f9d824c9a7b9d0d2eeeaf1ae4f8b14236
Date: Sun, 04 Sep 2022 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662290453
