Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD8EF6FC3
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 19:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7633FC433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 19:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670007654;
	bh=Y6BOx6uKlgBcwlTvDbuErQKuyiGsM5SeV2b1WwQDZmw=;
	h=To:Subject:From:Date:From;
	b=lQqSjnNn6BNJT6O+7DChSDUBIDqITc+jDbNhU/XMc/azTx3tJRTmpYzPRQf91ZEHD
	 UCyo+l3Nih/OpZIk+bPJDQJb8rvfY8TpQ6kqhy3dBWiTTQIxfHT0Ch8yozis4il6TA
	 0oi2YMWjP0WvxMv0nkWszuR8O1WvKXEepnkYYcy6T9aGok+eFgaX0F6ye6KX2AJxXZ
	 m2mQjKH7ZebXmmy3L8Y/Q7kChHgO/G8lGbJ7dO0o3LAg633YyuPRo3n/iY95r0duYf
	 5hkokhSQzT0WrBPA6IX8Ns6H6IfHT3w3YxpUJNlj2X8E+WuzRo4HBLmxbYiuKiaKfO
	 i2eGvy2ihEtxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F5CCC4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 19:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167000765437.3634.4261104448701704968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aba4444f2a312b8c005ad50f8e8c1b3423f438f42fa8fa6f0bc1a0aea038d3f
Date: Fri, 02 Dec 2022 19:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670007654
