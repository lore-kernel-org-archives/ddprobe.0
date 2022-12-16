Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1388371
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 04:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97864C433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 04:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671166287;
	bh=hAb6MmIyNWa4SoN/QLcPHlXfM7bQT6+Wwha5FmLpJeQ=;
	h=To:Subject:From:Date:From;
	b=BgkEndME/gM7Tx5Gu8JicCrnD+uuYjBU8IlEtno2ePvtgXufre7QUKrTOlI5/EIQD
	 nojNW6kiXz1TZbLOHOvzw1cdKQOlfqY56AdXJWpsib/3zyKWJy9W5bopphKkeHm3bO
	 oMf2Hwdd6d+rxp1nYWi5TmAXs3fKfXWbPbLyf2s6LrmGzyc6516iV9SNjNriZ1P9xD
	 wDsB6ueYtZZqNqP6BaleIaGCkEHMdv8cSJaUgVBNBaD2yVqWJKoT90f2hLGx97gikW
	 p8ONh7QP8pWYJpZIKXbwiSW+PNmVlmJXq4sKzTvgopHPUF0DtOOpTDdPFs0E4Mnkkm
	 t6iW4chbbr3QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76171C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 04:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167116628743.24547.6112877859218191430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4303fc2095156bbc282df76b0f3234bbf15ac7e7150369ec0181e2643d93ab38
Date: Fri, 16 Dec 2022 04:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671166287
