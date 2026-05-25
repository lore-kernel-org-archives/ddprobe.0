Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EFC2E424F
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 15:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779722554; cv=none; b=uGuQGojKi/jPpvWt9p/dIbOH+IKhkmJGBziEI6OcORELFRY3/g2amiXgB6FIGB97u2sljEDTdxe6XgkYnD50TJRvfHLuUKpfZheExW8wAODa6pUvor+kgYB77bwa24+7Og8QfBl8cOgKR7IOHWTpTV1ttl0IrOAcVMhhx18QpJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779722554; c=relaxed/simple;
	bh=TfwPw0pGclk3gF9PHq+YSuYKcRMFyFN6V5DFr0iUas4=;
	h=To:Subject:From:Message-Id:Date; b=Iu2cbf3WFp2FfPZ9NM8awCyYvqHOiftQE6njvuGWzobTqmm+PKEyYVXzqCVodN+C7/oz4AWWZoKwccI1Ce38g1ibAyaGNGD+12+a+AAhBQ7MxXH5TvSUWwgcEcEv5j2zW9gAI7bqtWCqgX9w91djwYppXQ33cJ4WVwdKCGqT3O4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aPigNQhw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aPigNQhw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1938C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 15:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779722553;
	bh=TfwPw0pGclk3gF9PHq+YSuYKcRMFyFN6V5DFr0iUas4=;
	h=To:Subject:From:Date:From;
	b=aPigNQhw6t4QURz0uCxdzaYNZ4o79DuIrrLxHuLQupeO1KtL1r66PbcAVxfz7cgon
	 U+oNgAqjfDTevB5ygaBAkAk+2BfrLCo2sDr0EaT1yR2kWCYcblB8HPoj2ftBiGu3Ij
	 LC/0XitvKj09poMCBtHQWkWL8kOCe/KpniyWO044MhNRSkR0ZYC46Pd2tLg5lO+US0
	 yxQYdWHkiC0FwdJ6+M2twF0eX6yPh5S4pFU7qUokPvBlesGEO9mGj87ZfWUOk/TRxy
	 WrZIA6ICBEKtJfDmXV7dg202iunMt8eNCt3Gy+A2WrSnPB4TZF25+nQP4WQ64P6fJr
	 L6bQyo694oKFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BC4CD5BB1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 15:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177972255368.709.11911433699112288498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ae414310a218a1c225a8480e650af2b9d591c96ee8e3c190e7a2d377c34878d
Date: Mon, 25 May 2026 15:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779722553
