Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3BC663C7
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 18:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FA45C433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 18:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668279054;
	bh=Z4IrxfEFeUZpsZ0Bnegndy6XW29ETuVc1jdLf9hC0Xk=;
	h=To:Subject:From:Date:From;
	b=pO8Um7QuQqZSOLduV9t8t6Wmifovmf1nBg4+RgpFj3rLMlKXXtkzvcwbYBO1ymFvA
	 4dMKKqOc/2VwMeI1WoSuesJ+QRBzAvu0mZd4UO5ZBCVBVgm8JAQ/Qd8sxvHamXRiz9
	 gHMkVih1Ra1+MAjUl/1anzjDT7zTqd2+rGBF9deBhE7x3SRtAPZHJ6aU5f6jHAC4NZ
	 DMXtLGwYwguLjtEq1zAo9HGTDm1HPQdlZyHqSkTxnnU0BDGguhMXBTw+YYImVEC1bm
	 i2TQva7xfWg9/tebCSkl2aAq+D0zHQRHl9gMjTvF1GbwDK1DdZv3AgIpDW9qBrAzVk
	 iz7IFxpD0Zihw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 554ACC433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 18:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166827905432.3041.5647606058123810767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a33ea3513e93f5183afe8d7709535df6eb85f80f0b237273a70a76f2828a79d7
Date: Sat, 12 Nov 2022 18:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668279054
