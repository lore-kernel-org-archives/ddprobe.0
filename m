Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560F120FB
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 09:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 035F2C433D2
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 09:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685180286;
	bh=05xgFjPnVnESHrsBDHwNB8cWP1fDcCG8hsuMKNV1gE8=;
	h=To:Subject:From:Date:From;
	b=C+A/xsMFRaGfnvi2AaEjypBZ9/Dh3ifobKcbmWNJ2ZrrOjnIvQ9fmZQbWBIFtaG4g
	 sDBm06Q4GHNBAMzVh9nzH/lziUtUsANnNbtwID9x4D/TwuwNFtMuToe+Argm+FXYTf
	 hhBkVEt18WCAQPxZpwbG+R8ffcKpyIHvKXvqZS2X2z0X0pJxvye7pYVa4+Y4znXGSD
	 ZxDvNgcmxPFPnsVQqsncs22wvRlOE/Vjmk1kEW83ZTwH8cRR3h45VlgxR8ZkiyYJVb
	 nrr2kLHyrhdWyXvckKBrZ3NxgnXVLh0NKZYa6P/gqX2VQwQr8VMBf6uiQwWF78EwsR
	 CGFfsX7urxW2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4C1CC77B7E
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 09:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168518028585.10762.17579248433284079504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abd2b23aa7fce7f470e83eb8f03db9ef58dd1e90edba6271c4b3f4dc4ecb36dc
Date: Sat, 27 May 2023 09:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685180285
