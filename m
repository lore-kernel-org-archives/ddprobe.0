Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D44AC2F2F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 11:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78A5AC433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 11:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670932287;
	bh=etwILarwjqGzrTlJU2Ipm3voJD6r3ichRa/NF0FROjo=;
	h=To:Subject:From:Date:From;
	b=gyBsYzaIvuNY9hsJInNQ+NGu8r+vEwm0WdDlnCYgevZuqjqEVJP3FsE77tg6LzUq9
	 xHVGH4zRKZerV01fPcRHzFkk8HUmfCBxrQHPSXvd19W6UtTsSM+gJEWewaxQrXcrv5
	 ye1PbHgqQjn1KwUJFFczl3yudOdRLskK1DlIV5h2McnKIYb8k9o7tjH+f/511KeksM
	 OKH+h3x3qIXwjVOdZwkU53RI7tpUOfTpUif1gEsj21Kbjk3AfJ2XbesWqgcfihP2dw
	 epTDNa7x9XAsZuvSvig0QojUPuxK/D+1OD7FjPt1C+T+adUrtzgZMBbVqFNwgh6cWy
	 RMbSdbLq94X7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D8B8C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 11:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167093228737.10362.12025381052040643472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cba5efce78de1232db3164901e2c385eb11d09b7f33f7f7467f0f36a24e2219
Date: Tue, 13 Dec 2022 11:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670932287
