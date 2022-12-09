Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAAEB7E
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 23:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EB7FC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 23:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670628087;
	bh=bgj0rTjhPegNtDVpLoyZr4G1b+Q715McSeD3oF6qdbQ=;
	h=To:Subject:From:Date:From;
	b=naT8tZCnBfCrsNTUe4Y5rM/dQQX9buZ0ga8qmH/Ec0ywE2VBiCXTUi7zcXd4XQwji
	 /7NP65DOPi4rKXaYXs/ILv6Nql3G/sPxR3fBaNBzqw2UPPX74t65s6mps1h4m0wj0o
	 Zj6SVUhqT8kL1GYzjjRh/dHGfkykOAEbcgggcKW00gAW7pjty+4qu9ppd3cWZtmX2a
	 6cnPDK6Y5DqGuWuVnrqKvB7ddM90v6j8Usd8q6u1U/2W9UzD8hV5se+Pxlp3AZRx38
	 lRs6KqfLWNvnXaGlkqpA+nGp8h/nFPrwVzoYBVM7PVq+DVDhur9Y+zNPQy29mB6dy2
	 SzZafaMWS3e4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 647EBC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 23:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167062808740.24369.10800265191237318514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 126f70f073cb16460d75785ab7aa0f952ee4eb01b1098b2a3f5af606eacd17a4
Date: Fri, 09 Dec 2022 23:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670628087
