Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A772F2B
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 18:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E27CEC433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 18:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678647425;
	bh=GQ5lKKno+wz+tsAx2rT45zWxQNWFDyWfBMwlFUJk64c=;
	h=To:Subject:From:Date:From;
	b=Tay/bv2h0fNCiPZ5MwYASef24GBBw6edyHumYCU+R5DyZzg+8sEiHdHg9M4ZYM3sg
	 3zwN2Si4CFwVKgwuG64N54ogOwbglhlqqeCgs5iKPCr3MWLTS1AbEjhPRZBtPbGpfR
	 +LCeo2ynbC7yeBD/Grx9HHUi0hFNWIOoEBTCdxr5h90hDhjJZFRA4f+LdyEpKvDYs1
	 lv80p0BZjG8/HvvMp2SeGunt3FoAOz7O2P8ZxigyQynUWisF1vM7RXhFSBEfIFCkQz
	 0AWuGHFNwTjbmx15UT2Ics8qsd2jTkw3aYMkKH4xf1DHIB4XJyyBxGgkgX1vvvSFCe
	 odaWGs0ERe4Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC12AC6FD19
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 18:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167864742581.18558.1812494192672836589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b2daf90152499eb24bea1d46e02ae36fe6499e6cb2c4e18e8734870ef3b56cf
Date: Sun, 12 Mar 2023 18:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678647425
