Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B50712B78
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 15:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D256EC433C8
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 15:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689004628;
	bh=noXUvYQ1Aeke3Z9IccTeHhMmMYK6Yj/bdj+F4JQNbA0=;
	h=To:Subject:From:Date:From;
	b=JAlLRT02w/kV9tavmiEJ6IGTRBcjujpE33V9sNhAAW8dX91gg3PJGVm30CEL1MYNc
	 vnH+MvaAJemGmpj/sJYaTLYzelCVJbq5z3nNiKDyTjpsN4mTjsvRGCbvHgFa3Hh84H
	 8Bi7iaNdbi0QRpuXWXuKruAGDbLAa8ITdywop1Jh1s+vtwPt8X87sRaODwHIMYsNKK
	 U4Q5/zmwnI7E0VPN9gqQy1SnLvgUK5iGsNIFqAEVPM2c/e800nNeMEfibLS8NRrLJh
	 fihBvKDq9Qd0t9EaJCmE9KJXQR+HM4pIPi2sLU9luokWxn5MXLucZ32QAuJBAbvPpd
	 nGHvTS2a82rhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B939CEB64D9
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 15:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168900462874.6563.566677621543632819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29fc804dc5c8ceb035228954e054402d9e058229d76e0029bfb38349315867a2
Date: Mon, 10 Jul 2023 15:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689004628
