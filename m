Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47850CA79
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 13:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C41DAC433CB
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 13:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692969248;
	bh=uF3IdVvO02QrqlDX39v7OnPO7Nf619ESXAkb0ujf3PM=;
	h=To:Subject:From:Date:From;
	b=PIl3pjQxtJYFTJnXT0XgvjN0mZNe9BcYs1UxKA8S4ceMFjP62dOX81oYwThQ3lqKD
	 MzADzCbvSudxMjSAkF4mdrWmv4BNU+726swKVyEtw/wpnlNSoGoZ1tL9SSjLEX1i0v
	 dy8QasCeHR/lLWBwyLzbteihp+dpl60fZ6lmJp9c5m4Vy8+Z2yJw1KWolY2YfHOMkM
	 sqKGftTB03wcDTo1PvuK4fCG7fCB0gsC9rxzx9bPgThy8Pm5kh5AIKw1vu7LncYXaH
	 T8giTAoprCJ2quhnQumz47KjqL3igHSz8cj+ey+ug2Vg6fMZqLxhbV936wCqpLjBya
	 sl4s9/YUHNO7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0128C71133
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 13:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169296924871.15386.2289742687368303880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 028333fe4dca5cac999f1f32f6419f168af3550aeb7395977f10df2a5eb69ea3
Date: Fri, 25 Aug 2023 13:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692969248
