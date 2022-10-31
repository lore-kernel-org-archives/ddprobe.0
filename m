Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C239E17F4
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 10:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73B5CC433C1
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 10:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667211654;
	bh=1ijgf8E5U2BHV64m05msEU1R5/2yaeVspSz5wSQJ9LU=;
	h=To:Subject:From:Date:From;
	b=W6rdCevV0i1c3HAvkqoREcN9Xx/1Sw8CUkG9j2Ns9VENQr8NqGounPMnoQ2SwpD7Y
	 tfF9wbZu6zrYM3SKZ8S32PEaTTNyxUILwawoJ3rd7CYASNIgq/D3ZUvJuzv4J6fxMb
	 VBSC5q4L1xUIkL2D8xJJRqN+lvA2wp8NcSBwc4C1CelqGwYeXFQzLGKFL5V9ldnbCf
	 jfIH+B0eNKUVp+TnVCyBU3tvb2TGo60LWIETKnCZHHdDeyNwbW97BXs63vn9a+g8u6
	 4JdY1e40D69BTLcKT6QGIy9hfgtvhR5jMA6TDYl+0vBRugajf2w+yZKQ2J3ELfyABT
	 8qB2xMqbL59Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5240BC38A02
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 10:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166721165432.1507.10597805060944400773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b18481cc8ae65b2c396fac173d2780c623e99196d65178d4b308836565e664f1
Date: Mon, 31 Oct 2022 10:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667211654
