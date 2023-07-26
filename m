Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64F8FE57F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 16:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD90BC433C7
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 16:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690387928;
	bh=lebi7y8U9RwFBG6oq0Ac0r1Xr1p0l1C8t+FceuWt1MQ=;
	h=To:Subject:From:Date:From;
	b=blVBpK5iNx+bPThBfSxh3Mq8EeDXBlJQr4GE8UilRtw6XPoltyCLpE9s3wElrL1Ui
	 8nCuHkaz4nmyvmYQbkki/iHTQQDwvWrfqLyaZNs6v84CbVca6zzZA1TJlAjGSVEtUv
	 PVrWu8QEKyJ9WJSwh5jSPxjGHY6V/Ko2BsolWjbX9GGGby/JEqGHnoLqlebslbzZej
	 onKaOlbhuSC+F95ZkRW6IA/lPzDGSrQTCkpt0qaEX+PP0Q8/0iw+A+pzyBUGisFcUK
	 y0DKB/EdnexpGdVbuRmBTyZn9JeWS0afD7RW8OyGlVkoSG2DMsUDp6qCNonjt95g4r
	 U5iFhGKzdw4EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B114BC0015E
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 16:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169038792871.24824.12524203497855546505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51daf2e6a760b1546fa898ea26d59594bf493ceeed6741b0bcad50323e05a8f2
Date: Wed, 26 Jul 2023 16:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690387928
