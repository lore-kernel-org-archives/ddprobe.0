Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15FE676C73
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708450097; cv=none; b=B44FrO6OIncmamKwdtlZGSJ28TGmZmZbqrcYKeVuzZ4z+J5TbL185u04PYOVa5XqfZgNI3sFAQZva5ktiWDrAGwI2CjbBbwGtZAZXtq4M0cSfSsLlJ/r6LLAkSyqsUeXjHZxc897VagU0Qou5fKNkwGzALKgNnwChO3cWbG/f7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708450097; c=relaxed/simple;
	bh=CztpF2/2ZEiaRB+WSTmcNETJZndIVz4j6lxxvVDUmT8=;
	h=To:Subject:From:Message-Id:Date; b=Se6oj1IdVPHie46iCVkPEYGftMa/I2PVh1pdcGTlXsh0WKb4eSPNJ5F4PcjwBlFSFI27NZvSyGqUqwN/ioAfQ9DQ1+1C9O5qGnRo2ntSAz7baUAuWe4RRPPbU620HvC3BpTHOSHNe1z9uKT0f3hasktfpEEpzCBQXxlX8YWfalk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P69fU//t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P69fU//t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B236C433C7
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708450096;
	bh=CztpF2/2ZEiaRB+WSTmcNETJZndIVz4j6lxxvVDUmT8=;
	h=To:Subject:From:Date:From;
	b=P69fU//tMb2iusiHteFNsQtXgfnXsuDdkQ74Oe3zKyJFpDX9riyY91d4TO+D6AOF9
	 pJw4sAQcwaD6wuFM4hMgi9/OZX5P94OdH2simcMoxn1N4hTu0FMiEt5tGSy7iC0enL
	 7mACa6KRyCsbFSK/YXaKMC34ufrq8hX6Q5N1ZUpjgyIRylMe5rejZr1zqqvf6xgd6/
	 iT+942tSsOnGXNpsgB8AgTgU1A3czEW4JqCzkj9jqElOsw/nF05THN2yNLp153pYzi
	 DpEEpIhizh1w9udsTxB0uFLMGY1PcmIycI6GVIrcvOUzoF17Nk/gT3AytoIinmZJJD
	 rXVBfMpAFpCtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F857C48BC3
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170845009640.8191.8558114613748814802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ac598642ba2ee5941828f341837fbd8779883c1e5818623f5925a1d7180af85
Date: Tue, 20 Feb 2024 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708450096
