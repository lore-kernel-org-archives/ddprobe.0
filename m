Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E684C8E3
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GXXJJjIk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81A50C433C8
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699192696;
	bh=U1/+HKtFkjVY7btFWbgo7IRq23bJJYhWohHDyBsPk7o=;
	h=To:Subject:From:Date:From;
	b=GXXJJjIk5FxWsNcGRgogSmU5jw5rpQGCe/2B00KzdfVB7T2eDDB9P4lCe2K/d6PC5
	 F/kPw6HykKeTOQ43F4+61XdK7aNrC61aVk40GYKgoCe2pFBeAq25UDBpa0u087YyeT
	 rUu+YJgmprIXZcOMa4MIjainAabC6pd/ae2rhpu9J2U3IBIzq52NWMKyc+fF6DMTAw
	 CXmSe+WJGeVoeboubPL5YuiaKhlR2p38Ql6nldYYDz+96ms6JO2L5T/xdP92LwEAc7
	 PhLUcO6Vw14FpGAwnXZbuMSW9XS3Dq2Tava5PhA/eqq4sRk5dpuyvwqM3weK0g6DHG
	 A9AEmvECdI3BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65C8BC4332F
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 13:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169919269639.22575.10556527575971441701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b94405247646643fa6cf58ecf6376af754fe752e50faf3e903b8d5f87975a00
Date: Sun, 05 Nov 2023 13:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699192696
