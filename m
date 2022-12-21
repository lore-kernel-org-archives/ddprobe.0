Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF02B1FD2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 10:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8327DC433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 10:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671616887;
	bh=lttMylT+Dbn7KkouSNida9uhKpqHcMvpoj34EBE1sEk=;
	h=To:Subject:From:Date:From;
	b=YGBfvMQ/JglPx2I0h0w3KdE5XNqgLxGP7z8rPPV/09JI2NYUxPc6iwH6y4vpFx/tE
	 Q/qGK38KlFHOFQKcZiWLIQrl3sRwVBZNtHGCDC0Ca4bfByMwWEudJmm7N2V6s56ruf
	 6sHqtRcCYTq3zRtO0V0/d5GzsH4uSDazKNwrTHYJYfvlsYKoBk5UhlCohbBWaMuFfU
	 Wta49eMkD4hjfVLOFLyHIX2n65Ewijk6f+EI7uhYRcDhhGMYU8ZunDrNU7aCvQA+E9
	 S07jkay0ftU7lOTl3Xes7PN8+nZbVlD3UdjJ5N1JPB2/58KYrz62KJBGZvIYaX1qSn
	 qYOYBKqrrYq/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6635DC4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 10:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167161688741.31181.1084276848271987097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27fe8a570b0917b629c4709b4cfecefb0e8d0e75ef9cea07de92c33c374a48a2
Date: Wed, 21 Dec 2022 10:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671616887
