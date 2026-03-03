Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211883537F4
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772565894; cv=none; b=o4m3eQ9mqCCwarVcRSlNgXTShCnf3AzJXHdprye9ShTbuDCCeVbUqokqvOIBvEvy1Ga4yPYQ8kVLDVYkDh/cgwzsyySZD1lMYkcBOT3MaRCGeYDdcsFFAwF2h9f/xlC9sv+HVEXtTlyCbYJpCo7kU4AM/9uMXAVz7FLJbaauDUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772565894; c=relaxed/simple;
	bh=yGJ0AUr76U8OodiAc+nJqh6EHmZXWrbszZt9pMNjUFU=;
	h=To:Subject:From:Message-Id:Date; b=FGP5BXDlylNgfJCsIG3MWYstFoaT61tgOg5j7M81dx1ZYjxmyvtN14ccPuMWyRElVayt4XwoGQjh6wV3o+y/vt900gAPOitz/R530DdqPnW043/OXl4j/3Cw6lcKid5wsjwJsl8mSdK+PO2ixDBR/EBIpI2LOqGlA5DvMi4dPdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o0FB3L1L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o0FB3L1L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7263C2BCB1
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772565893;
	bh=yGJ0AUr76U8OodiAc+nJqh6EHmZXWrbszZt9pMNjUFU=;
	h=To:Subject:From:Date:From;
	b=o0FB3L1Lzv6XBfl2BsEl3cB54z8K+dsMffUj/dnWIGFkSd4Mgx82BuSXLdclQKHVI
	 TcYM7Fmf+93gyClZfpf15Nufi2vcjs46SaojBlnI9xy5u2Lmb0HjmWuaLKVcePjL0s
	 gjLTmUNWnB3uSl3LQdflcKTbwf2S0uXIwxTup09QwcX3Bso31ghsBX3khgt+H4UHBr
	 h4N3y/gLxQg84/RvSuVQkjMTaeCv+ldn96iCew2lgNtoPVctMRnBFtdcM9BKezUXIe
	 qB9WqpGXvzJ8JdBQT6SZPiVHAEb9Ixkk3R2gipDSpODaMWf0ur2sHX0F/UhDKwcZ+o
	 c5wBKV9veMDQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DC6EDEBEA
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177256589360.16952.7720855266519246204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a64187cbcb167062f325fff20c4f8ab131aabe0859b9cf515b0308538b16bfcf
Date: Tue, 03 Mar 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772565893
