Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C50DDC2
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 09:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nX06XmtP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78D9DC433C7
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 09:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699434496;
	bh=3z1F20ORRsa6jANWJL5a5y91GNT5je4kZDnCgtKrsjE=;
	h=To:Subject:From:Date:From;
	b=nX06XmtPs22D/uPIj1sNC/qVkvsJnxC0kQoiWJH+Huy3AFClcSW5NA0mxT3nMT93W
	 cj4zizFdVzTXNaotVzvUy6NdZ5DaQfohVgOJ+Lnhj77Pt1U40kjySVlzoISl5Q01rA
	 bxI9DU5yBujwXL2XNoDFgxuAZvCp60VeCmq1Y6t6MllkZ5DG5eYPa89VdL843H2LED
	 lE2g4daG++15G/CPObt9CR+d8QWLNinrt8WwUzApey9XQBN5NlvbCPyX2kTzMGIBCY
	 MBWAuBooNt37cwYQ2P8m4eUGEFOMPg25GrXk+//1uMd9hwWT3NxRZhTWzJ+vIoAxq/
	 NF5+uezrKIK0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60B21C4332F
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 09:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169943449638.32251.17574496478832166379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c13843561a872baade49a762667e751dd077b2167703fd529e4d8f7a549a736
Date: Wed, 08 Nov 2023 09:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699434496
