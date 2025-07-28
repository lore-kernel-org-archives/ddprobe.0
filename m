Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1644C275AE8
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753730394; cv=none; b=eG1cxf57jMm+f33QUD5sXmOpc1G9+ze9j19+6+WITyJ+WkLAHs25VFdnRK3wlhAOjJCuMkW7RPRLzXjnV1qDuF7T8trmZHkLJ+C+3xNQWyCJ8ATIz/zR+tszDl0qColCLPzNtydcA1/oy+/iYUb0KWFFbSfDD2wfdLwn66Bv+Ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753730394; c=relaxed/simple;
	bh=fKXqd38g/Fjpp4CPaKqur+TJlhNMfRZBI++D2dF6io4=;
	h=To:Subject:From:Message-Id:Date; b=jHUuXJIOKXiN83siVSWR7Fjh3HgVH6SeYI0tI8hZTWHRNbYsY5DQXttDpJFtAN25fz0Ll1Og8ixnKoZI26YWbXlpvFovB/4ullaegUUoi6j81lsGSf9dd6D+FaEZupObq/GTpVX6F8CNz0d79+Nxvo7t+7wSbVvLL0dOVBaz3p0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gurvVgOA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gurvVgOA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E227C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753730393;
	bh=fKXqd38g/Fjpp4CPaKqur+TJlhNMfRZBI++D2dF6io4=;
	h=To:Subject:From:Date:From;
	b=gurvVgOAuP0r/SBOoaRkujx+BA5ePG8ZGURW2aIx06Gxo8sD82sgcN3/540RBHkX7
	 1H0bjm+5q9A96OUMhLpEExD4U2ApSiY7e1MdfnoTDAsw4B6a4ZGUZJTMtr2UHGPVDe
	 Hzmjetsr2e7MjC5v1NtAjRGfYFfY5mLFklh3YutrE6UJ0U23QmdB2Ccy6Y7G22lzoB
	 2FdPckM+UMt5zwg2ReovMv3GFtV/7SoGWJuhE12/4j8l4u6Yekfht7nDNiQytFgMdU
	 QGj7tf1tYrt+P7OoC3+1CKf2tOG+szK3+1kglk7n6X6oVR1C4mTsXvPSZgMCGKDjXM
	 6rn/0Qi0omouA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4F3C83F26
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175373039357.24534.11750182292885118728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb925e741d76947684327443eafde609c164b92e70c5ed77cdd239167fc419b6
Date: Mon, 28 Jul 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753730393
