Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 099E13D79
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EtIVH+9S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 816E8C433C7
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701607696;
	bh=YgpyBVDJy04MMpDJsXv5WpYgEiwl/ZLsFYambOH/hG8=;
	h=To:Subject:From:Date:From;
	b=EtIVH+9SWgMp5+j1jgWm3LIT7CpcPxO6uDlLcM4zLfPE3uy3wRgrfZzLQ4ZBTK/SX
	 MK6zm+3mNLTxM5k7GjleeHlV0FRRU4gt3icURZ9T/RSWZd0P+sMyYj7kjHH501VK7e
	 3iqfEpivlLUV2DDpCSuivJwF3BBIbRS+mAhKGqTCKOyGYW66bj30IMuDEJEeDa2h6l
	 /OxB2h7OFVCY0C+cqxUruJruu6wuZ8rfBOhacyXFtEZ8IV+6s0ld10IXW1DjBD/vZ4
	 RKukRfhBK0E4zIG7N9oKRVE0Op5qGwPW6evBBk6GQFT2M+Hh52kEwvPr6TPsxf7Dtc
	 as8+mMIWRCUXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F808C4167B
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170160769637.32149.15292896680796854607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b1748be3f012faddcb1332364b2add7e791c51fc16ca9affe44ff1636be14d5
Date: Sun, 03 Dec 2023 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701607696
