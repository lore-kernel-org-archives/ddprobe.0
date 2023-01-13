Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9A1ABA57
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 23:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86F6FC433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 23:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673653287;
	bh=wY5v2dBYunf5pwpOFbIco0E+UTwigjxhENjt1NU0jJ4=;
	h=To:Subject:From:Date:From;
	b=X0vPumob7DHYYyqFfY7zSr+SGn4q8AkZIlPObojecSSwGnbBrJ1hwuySQnV7tlnZZ
	 ybJDRv+a/lGtPNgxWBY0cBwMdC7HjDM/hohtUhIJ1h6HbxY7TjYz8HHnL7Tnv1nEhg
	 brKy1hdaP4jTvwR/thlkWKc3pMxZybMjNIO6VZhD/YXNyT7H0SVRoKwXjFqf1DEOe5
	 HpMIPzvp1GVsPkOl6jbX1JKcuN/s++FX12n0ZNsThAoPFO50f8gFg12p0r3LB6jbdE
	 6uWpCzuWPV4uaVP5ArDMStQAE0axrd/P3VvA8yIFzkmQoqYjicXdRXWyrk4L/7D+vh
	 yradrLKmxSb8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65950C3DA78
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 23:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167365328740.8540.10525217655514681140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a3f6e096f8b30bdfcc2e603d1bc9827f0bdfc8ed41a3a55b5936572da4a3149
Date: Fri, 13 Jan 2023 23:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673653287
