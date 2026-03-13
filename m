Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BEBC2DAFA1
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773414294; cv=none; b=i3gtIPck1QKJj78DO1b3mDpcxhZ7+ZLpEwX7weRLsVHdnt5vk8JOlXOq+UQGeAATivYr2HuQ8mX//bsTj9G4C27u8Xme4OZPMUCRKwqySrpLWHz5dn3u9MyvnM1EN1L4fqxzSYp+SEHt2TwC63N+1EqzMo1gM+4IHw3WcDxnFSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773414294; c=relaxed/simple;
	bh=Lz53V0hB+MfR6GGfGTQimFQGq5C0dQBb0btH3G6KW9Y=;
	h=To:Subject:From:Message-Id:Date; b=hIjK2MtKlNOuCUWZEfek05eD9ejOiyCuB8lN72dgU2HDwCuRnOG7g8iHZmAmK2qytwzBjX9dotB1Q/LRDcqiQv4GC5keIWYuXWm7lKpBZ0Hc9xMh+g8bQx5SkPU/hnPBH5+uMST5Zte9byygKAO2Wzu+SqyCknlO067ZDb5jQ04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=teBs2TCL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="teBs2TCL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC38CC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773414293;
	bh=Lz53V0hB+MfR6GGfGTQimFQGq5C0dQBb0btH3G6KW9Y=;
	h=To:Subject:From:Date:From;
	b=teBs2TCLLYh4jEnjwtWzvarvRHpGdhTzCgWyuWZhY1av+4AYmOICJmM5M7WOYBNT/
	 uNvmg/o+AGEecud2WH17oY5ZEpvVFMFUJdjQ77hZhvbK27a1D7jfEOxTPfw23roa6n
	 tpqkpGhgnIEDDeg3F3ILb29Wb94hS6rzXNdhs4VA99OGNUTR6hFB8vUf2vWSv+wSQn
	 6AU6oz+OEBUlaFhm25r0XJOHeqtD1wsLp6OOGE0y0vECSmjZxkQOAOOdO8s83gHq6M
	 7tnfewB7trSA4Uqz1Ywi764IIUMUdmw7q6tmON8YQTyUcn00/T20MHGwhuPS2+bVmX
	 YE3BLB/Mcoc4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD94105F7B1
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177341429362.12499.5016260842263458777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 237359ec289929e40c8f007da5cf219408d6d74de9fb62a45f965fd400fef73e
Date: Fri, 13 Mar 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773414293
