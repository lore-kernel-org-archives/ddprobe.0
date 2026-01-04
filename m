Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110D41DD877
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767564234; cv=none; b=IUdzCXeejrZhMQQUSUwSZJynnyVFPCF8u2osk3cAQyNdEdZPGYcYUr52/gj1YlQTGbjaPr9o3j1SfypyICMiPAGSxrkM9mzvITXETD+s11JoKKIVRVUDw9blBxmJOwFGR1xDM0TB13XEQ0D3a2IfJ/TSfgcLeJjmK2q8yTpW/BA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767564234; c=relaxed/simple;
	bh=MMFpQUq2hDAmPo0c/9d+y04lCdUZ/hj8FW0EQu5RvEE=;
	h=To:Subject:From:Message-Id:Date; b=Emx38G2huGmwQdJS70FeqwwZ26mw2emBRygoLdywMaROwtSYXsJ1jp6DwKG+/hzcrqPMNXqPyvFjc8BasNIAguVCmb/U86Yb9SvdNhfIYYW58Um9eqevAorGuJTqDOPwyT+Dt7ksxRgr2S3ETNMWhBdrot/FULOvNeFaFk3S1eQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UJYN0Uth; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UJYN0Uth"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CD3C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767564233;
	bh=MMFpQUq2hDAmPo0c/9d+y04lCdUZ/hj8FW0EQu5RvEE=;
	h=To:Subject:From:Date:From;
	b=UJYN0UthjcrlMga3RiSHoF1YrwI50jqd7a5KMbpVDo1n5wH/XmnSd56uiN7M3fSMi
	 5ErAU4xCh/Ha2UO/hnyJ8pR8jnZW+gG/sUQUEW6KsJRQQa4G37kKsBPsNOlIyQPZe7
	 Brffl9jjzt9cilTQIwyCTyxV+iiLKca8AtPWnVjsPVQppgn+m8+V29nmjmxNrYoWO5
	 TGkQ0bODUouOOy6TXG18zHbrBloCVrV3fZqh8v/w2IVWTMAn+TGfVpLrcJxU8qs4+P
	 C/sVKcXZ2jdzrSb7hJEQe6rONuEWFcvI1Tw0vncpfMFLCrn3RYnANSRunZvsF63tBw
	 k/FtlkvxcdH2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9376AC2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176756423359.28510.18439897290052393440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2a84ce52cb9e212aa36764a3cd86da796ece550b32acf8164c88218abeb600d
Date: Sun, 04 Jan 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767564233
