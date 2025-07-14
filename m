Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6B8225D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752519594; cv=none; b=U1Gx6JRLcnhjohjtqZoY5YTpt6GmmT2wCVHdY7JNkqzWxTTsvf1PdoJqZB/m/Rl9qjoAJX2BrIL7EeR+VIIlTRU5IFgl4EEu6DtvC6j6Lz0Dgk5YEC2QCppXRhqdW4iBMf6cVkRqhUWYp2mo2VVtTJqncoddASZlm+528cHkGo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752519594; c=relaxed/simple;
	bh=Qsy1y/SC1bF937D8zwO03R21m8wrlKlCUPnQDdPWF6w=;
	h=To:Subject:From:Message-Id:Date; b=APOSplB6WL/7KkerWVZObkZftccp1hQ4Aau2ZuZcyw3m+25xs1X3kkWDgrCx4v4w6weDR4Q0YeaQafjQ75+1OD6D6m45IynbGoDs3F1LvAVy93KCY4ANJnj7rgvZcpxFyFFn6BGhvP7a6AydMV/j5MGT5ssDTPUsqsP5QYkuCrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=daAa4yum; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="daAa4yum"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB6BC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752519593;
	bh=Qsy1y/SC1bF937D8zwO03R21m8wrlKlCUPnQDdPWF6w=;
	h=To:Subject:From:Date:From;
	b=daAa4yumGGEJoqpXNLSemFvLu+fRGjHb14epG4Fk/FPo0WVgVzVMXfqMkp7hEEkJ8
	 VBtzbOCjKCD2aDv7YSSCYp42VkIy/n05ajeWQaicqTg8QvDGGYbAJD/83yoEDHgp18
	 ASHyyoUjRyLKeECwCuvsR+cIqQSBv/rwSLKQcDRMdT2Z7ofHaUP6hnW/XzXl6XE747
	 OdqdSfndw5IVUk1g9NBHj7ikLIv2yx7CS4gq7q0idiT+3BzJyar3/PCDSR/LVqyGzQ
	 YJez9mG8h7NBRGFr+CZPwGwrw2bXdE88kmK1tnLUxHm9k71D6oghcY8ra41EWgFb2H
	 Uiac5UD1y5RrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F03BC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175251959357.850.10923418337664345960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 066c73eef79f1e3951edb174110042a47db6ce43804667248d261dff08693329
Date: Mon, 14 Jul 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752519593
