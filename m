Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC5F3443F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 16:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A40CC433C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 16:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669049454;
	bh=t7hHNKkh89iCCgSL3BQjvYpqJCstJCa0F6lWMUH/wSM=;
	h=To:Subject:From:Date:From;
	b=rEeQ6Zjj1QRasEBBvlLIZ2omqUIv+lEYCVS0Npp0Ts2OMkTm+3LX17TbcfeWRZcNr
	 jI12j70AhN1U+hoh1ZGC5T04MRHTAzoVyi0qLPDNzXlGI4JIC+cy14K9V/lCnVnQfA
	 bbjGGKi843xABLFvNWQkpOVd8WeRtdmk0vQLnDY/KoQMkfeawcaxzyZsUNWYnX0a0N
	 CwTkaHo/llt6c9E/gEA8aHsUZCWNGp5FA2dIzRp9hjuutcNC+1cUHz+Zj+MbUE6ccG
	 j+TW3VFxmCd57BCRaduHRDf5Yp0gm3RfVa5byeuAbuD6YrHA2FXziKvYVuCZXE5Z/s
	 zpl22SyOg9Baw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 546E7C433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 16:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166904945433.23646.13287757085311419013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a9c02ee7cf71a59ab1a81b2f16dd9409deb86368a9029fb6152ae506f6bd6f9
Date: Mon, 21 Nov 2022 16:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669049454
