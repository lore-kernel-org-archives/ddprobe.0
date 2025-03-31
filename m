Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EAA1DF738
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743419394; cv=none; b=DKbkRqk7QzuJ3gxRCWH1yPth9AqzpZQQPadoUc1HVgfZ1kR/k+2qmBdmYAljnXWwEdvJBSRfsZAGpYC1362lVsEu9gldph/r8xROLfx+nr65Kw0MQORez4X5sCpFScheYVfyW86HdYL7Xavgm1AncDHO32Dkci+N5gn4mADwvvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743419394; c=relaxed/simple;
	bh=UjdQvPdKvtEr8IeYQL7eIwYV+Z4oIW+wT3lZ+wliC/A=;
	h=To:Subject:From:Message-Id:Date; b=ZoJcR37yv81MNA1/5/uXWIbUIDvl8VnwXNdQb0hhNIkk5U2aC0aDGFBCNw89U2v3yzpe3hgHOGR9LnhTxJA5qN/qwMujjy6CUCW3um/TCOn22SRvpCWcmALIYk0jZM3WxZCnic8NTEZq3NM3bHl1MdUsHp+mnYTDbDh8h8pgip4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=szdPQS/C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="szdPQS/C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9155C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743419393;
	bh=UjdQvPdKvtEr8IeYQL7eIwYV+Z4oIW+wT3lZ+wliC/A=;
	h=To:Subject:From:Date:From;
	b=szdPQS/C8HvktOSOziL5c2Wwis4Ql/8kXJvGAKddl/ilKEYlzlHvSWjUrLAGDSvgG
	 xOTXbtKNoHHgIsIbp2+QcfVEt1dTx8vBypJoi0QwFPV28eXkM22NfToiJUJRQA5Zp6
	 GzBRGWfzSIyC70CA4MGpQbdDVdG4AeixXrUeG2L7IT3dDixwRhcydLkgManyeC8RRX
	 icx9hGDub+HjZQBINTr12zu2+456bEiXFzxAc6LhbQ3/OVDopDnSe5HBruVcuv/wVb
	 wl7d3E0e4FvcvfLmx/joT5juNS76/sfuhGRLmOLZ4ButIux6j1CG8SJ7NgMQRYQmeT
	 APf0iCyZcScxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E9DC3600B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174341939360.20422.14713026964580730294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 798ee20d9cd59a74351e0e946f09555a3254e740e5255afedb3a79d89d23f463
Date: Mon, 31 Mar 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743419393
