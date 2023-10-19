Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66DA320EB
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 12:58:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LROJlgvn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAAC0C433C8
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 12:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697720293;
	bh=dPuXT5kQOOtr0RqiUUPr91VgaZPwwk5kWoi/S5eqMmg=;
	h=To:Subject:From:Date:From;
	b=LROJlgvnZXjQ7xWkx6hJTY2Pt9a4XVaQLK0f10+PenwsE2FCtrmmJXMOzbEVimxp9
	 CKw6mXqf9LWKrhfG0ByC72VOh+8b+LYHGrqq+7iEwqrCI8QRyt+h3PJL1BB9PItv7j
	 rqjAatATAbJN5htMQp6+Mzb07IZJanAHcxMkC3Rn0MnbUmHSh89oDra6NRFHB0EXum
	 oelLrjlbuOm11FCq3DnTE6kR3r7UnLXIdSpUBB1AiFFXPRvhTYreZpmspp4dT5UXS4
	 IzrFgCr99hBlCHnNMudvYHv+MKt4+AEkuESNHh5t0yQ5rXtDtAALGwwGh1kr4wVfR9
	 UpxpmxBAhDeAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D318FCDB482
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 12:58:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169772029285.16800.12690821953249025618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb7be7456b65494cc6fe64ddd1d4c0a7b9f0a15c90b79c7a7eba4b4fbdde5d33
Date: Thu, 19 Oct 2023 12:58:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697720292
