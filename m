Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDE4223C0
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 11:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CF8AC433D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 11:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667041254;
	bh=zfYiYW9G43Vn1GctmtnAHUwXmzY901rmWthJ3Wr1iMw=;
	h=To:Subject:From:Date:From;
	b=fuy7CwkUIv0XrsDWSy2UZeRv//lPCewsUFXSlPCTnoJfB6Mj1znqMdY6fAb3JFVGk
	 0ZmB5ESqtG7cgfQhHeRvyNhbU7l/TFGIjd4AcLmKmhLXdC9IB4XURPRZRMV4Zb360Q
	 hez1OpGAKzTVabvKQSnonstGifBD+iJsoBzOQUOgIzOz4l+HtOCiO2DOAiyjHJIT5G
	 MK0HxM9Q16pKATz5I8e6GyPbEXUnXFQvELqFoqLumyYW3w0bkQ7euEYXxBL3b/M8wk
	 9fmzGNOv9RzJYZiaztF2K7rIyJNygh7LgOFNUFOOy3KRqQdfGJOB2fZPRJ5VlufRAM
	 w2aBSGt4hGxBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60E26C433FE
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 11:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166704125435.5111.10037455056560880566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ca38c7baa8d4a9ab65e21bc04e560d75d244f7343d6d18181e24002bb5b23a8
Date: Sat, 29 Oct 2022 11:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667041254
