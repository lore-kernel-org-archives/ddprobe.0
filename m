Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB34B7E
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 01:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E8E1C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 01:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672536687;
	bh=iTEmG3zaGWEyeXxzD93Q4SKUDqkgx314m2VrS4sjyHo=;
	h=To:Subject:From:Date:From;
	b=IrX0w3iuViY9vI7lsB4zst2PyV7bS4lSB4DTmiIFewbkJzRLpNu3bAkB3Y4LhzSul
	 oiQqwvLS/WQ+YUGyC+HWNIolHrlA4eWTuc0EvmHEf6yIOHWQpadgJD0CSPkWrMZKcS
	 zwim3D20n3Ev70Lh9V+7pMPCXEIZ7RnKtopOI3rF1+Vw6VXagFV9yGtDweVfq5QUQK
	 YV6mJFliQh6nTOWFpAysuJR7Nb21ZrcHidb5aOlGdJTRbMNiTtDIZT93OEFlCI1/vO
	 q7OKIejSzNIkYFmcswCTi4nWuSlRQBmzr2rfmVQaraS8QM++ylJsY1DUSri90TT9TO
	 kbOkGAXq+94FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61A3BC4332F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 01:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167253668738.9508.17721402975438204841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c402d2cf06f80337e577a1a06506228d601c9dde1fc596209591c77b690a6e9d
Date: Sun, 01 Jan 2023 01:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672536687
