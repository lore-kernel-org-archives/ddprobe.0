Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 864F338CA4
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 18:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D066CC433D9
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 18:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686679628;
	bh=RQax4dUBvqr7coF7DU74V+2iHiKW/xHJqHgRO2nZi5k=;
	h=To:Subject:From:Date:From;
	b=P+sln0pKYavaufCC/Vcw4qAu2/S3//VerdCuGBCALUqBasEeGo18PDH609nYQe/jM
	 /AaQL0ap1QF7EQtTmthl/YhmvVLcccFRS/Zgda6zd116Y4s5DgfOd02EPL1UXu5oXN
	 r8Z1J3qJnaDn2PwZJphiqRoesCg76MMpfIwDheBNUiYges+/XgfKDIajxic05OgJwX
	 HgtjkH3UBD6dcpwBZ0Vq+Rg83ncJsES92sV5R54cQBWq6jO5KebmEJGOvQXp6JqNZe
	 Nb49kmn8ywnO8ieb+LKaNELYQ04qtXLcTDQ+327p4LRI51tIRz9QnJDYnM9KF62hEg
	 AnnTpmtYF3i0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD502EB64D0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 18:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168667962870.28167.4945467804697413483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63a44b6837b4b2550b28a7bf8e84ca87dc2daf72aee331ec73e0422f2efedf5c
Date: Tue, 13 Jun 2023 18:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686679628
