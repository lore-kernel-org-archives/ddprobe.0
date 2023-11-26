Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DB2D277
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 22:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQrpNBhQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BDDEC433C7
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 22:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701038296;
	bh=OmAfS0gyiK0bkZYssxOxLQeZ7lGQzMmNzn7XJsYN+7o=;
	h=To:Subject:From:Date:From;
	b=QQrpNBhQTsTqZbSrnxCJ3Xw9C6GdYk8l8LVTDVJeZriJwVsGnqHLPS1aIxY30/r8g
	 gWEL0OclCAeMkIYVfm7uCZebSWoZp+ROFw7z4DizIztdg371H3/4qn1/ns2wV2bWPb
	 fi0REl/pWJMjUf/CE7Ovytge/2gQoMU+hJRYKDPpWkgNCk5LK16gDBuJiI0gT5WgyN
	 j5pEWjaccNrsW1esVQwIsgz1PYyoJdcXAvexlZu21x4/Qq5DtQ1TSoig1CaiSDJg+d
	 yYgGbv4TmeCpHVDi8SxOiEjy4EufzfZiuma8VfOyg7CnvLe4Mmjfcr4/dNhdU8sMSU
	 YkFvz2+uCnLfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6018BC4167B
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 22:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170103829638.10620.1633263231713439890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1735618bbadcf67d6c071c50c9ef71322040a229a5e0bfb6bd2f0979f798c6cd
Date: Sun, 26 Nov 2023 22:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701038296
