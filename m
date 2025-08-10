Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CDA33DF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754819394; cv=none; b=mJdnNTppifMBFQmo3jp9ELkkGSG71ScNXZ1Iw8fsZrVglJMkbg9jaipunItNZIk4klrGWTqTSfUentkjdD8e5y+bKykToSMLsRvU559HKgxegKveWaAOnZvo/g1ZsqjnhB+jA2jXlp/xQtwzVYIrFE/WaKW/eL5HFJKF2BmX39M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754819394; c=relaxed/simple;
	bh=WCBTy0FpxRHRpeQJffmjHt1RRTqAB4woMv/qndS4ZR8=;
	h=To:Subject:From:Message-Id:Date; b=ADhe7+XZ8+YGQRik3qZj6hOHakGeY99O14A0qweASKTAgPDn2RPKltCDUunnC/nzmbJOMbKgB0j8HnLc4FnCwNR4hH4HctVMHkQQLOBhN9s/Bvi19aP48BLP2xqoZ6A005VI4sBRbvU+c4byGJiw9nw9oFvdODmziesnMAPJlZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2cDgYm9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2cDgYm9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CD6C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754819393;
	bh=WCBTy0FpxRHRpeQJffmjHt1RRTqAB4woMv/qndS4ZR8=;
	h=To:Subject:From:Date:From;
	b=F2cDgYm9ZpBV4kJeyFaIEDcg/vI2mUWyIq8AfH9UrGSME/uAMUF4Qqq/V6UXtLp3Q
	 b1xO/6/hizS7Z/YG66sJv0w5SN3dY7WXRSxNKG/BoRoAxW6IWwf1EzqOcWnGBn3NBn
	 zPm+4hu9+OZMzGLvppHCcZzEYGhoqOh8S2Sldcf6ZQrCV5oDhFRQGqbWQdR3BbM17B
	 WEtTa1UoCPRbQGRN098wGE40cJra8VDI57xtWokZAo8HNvumT+7lJ0S3pjsQVB4H78
	 e4l3bIsKi+t5C4bXEuVMxO/Qjo7Lx66vbV52JP8OhE17qEl1tMNVP50iENwTJwFpOy
	 M5wFdQX2BmmhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94341C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175481939357.14819.1870945231417923919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 565eebb623fd6894f978370e58510780147d9073b1521f04d59ff320d2ed80eb
Date: Sun, 10 Aug 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754819393
