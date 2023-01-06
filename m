Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB7027B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 08:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 763A1C433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 08:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672992687;
	bh=vM8ekbtBYrS3sthNA9pFv9oPDQzVt1KHh4k+DrfqV6I=;
	h=To:Subject:From:Date:From;
	b=T9XWz/HLDGKhHiPqyLzFKYiROe2e8KcQGZWDUsWJsRyGSQEtEAkRUrYuSX+AU9omV
	 VyHNOIIR3WTmSnVY7d5LRgiksYYoQCJuDtf+eWdeH32ScEYG6XQ/W/TbDXYfKdq8A8
	 80PA1/HxyE7vecxV2tAKoV2nA5CRrPXwQpPH5tyIw68l5Bu7lNYAUF5jiwrTCh87ez
	 qghcgXvh44US0Dk5lU90+dRShRSkN1PKTAyEE3se8YE8XamkxciBfOBkqt9Perqq68
	 Vta5WWLBqR8i6qOnC//iWmTO7jE/zM/ITVtTKOr146OcCHz+w6NfTJCZWCtzkJPPv+
	 vdSvte5bHj+fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E2E3C3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 08:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167299268737.21901.10031145711857302435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 212598a70b1db1102ec47a6326583c361d62006e0b35aa148083a744b17df6e7
Date: Fri, 06 Jan 2023 08:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672992687
