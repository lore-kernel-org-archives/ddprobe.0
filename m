Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A07FF3BC677
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 19:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775935054; cv=none; b=G9c/yHN7wK+/bNOp/OR4a2BXM0ftYN7ggeAiuI5UGdmg/eb/PgzVRUZ3Qh6cSYqL+anywqkSfpfVY5Oo+fScF6W5jVmLE3BHaEYlB3hWeNj2GEbzOaGDGLjDCQ1XCcCQngkrcVcYNM+8DtLCyhyszAZsrqPEjJVu6BTZ2hNmlIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775935054; c=relaxed/simple;
	bh=+ARYTZ1rC7dHtYl+HEbsczfQ6g9pPkeSu1xPfRxFTZQ=;
	h=To:Subject:From:Message-Id:Date; b=RMzNMrHKBWm3jh//8b8uoT53JTrM1Hdo33m8HNCa0bwUXSaYpOzhS1zM2BUR/H7Y6Qhxxn66n9vuIAh3rfBpY2ioDBHx+Q3jYsWiYU86tZR3RxNZMQj6IEm5ZatkV1V8Vi3J5orkWFLrc3Nru+/5XrvLHa5wkncK0bH59O+Hy3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4FasSqG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D4FasSqG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6EF7C2BCB2
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 19:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775935054;
	bh=+ARYTZ1rC7dHtYl+HEbsczfQ6g9pPkeSu1xPfRxFTZQ=;
	h=To:Subject:From:Date:From;
	b=D4FasSqGITzDV07BdsFVBSHMhMgSz8e4R/LfSDEZA+TDe4z1ush4JKFeGyMeG0f34
	 K8TBaQV36YF9lLkxLB4WfcVfagJnPJBuQTBiPuNnPu8inpWoNapk7ppeskDxdtVomE
	 EEkIZ5Vk1OnKS6Rl1Uqu5wkspkPmiaAdAy2SPaEHWbn1ecfFtoh9B3ad1Vl9usUvBG
	 acll+FQ6AFHac03s/rJR75Ppmcu6wf6kuND8sizMiI/Oscg0amUN1GtZatMCaSCVhN
	 gg2xruvMexCbIwp9FsgfMPNUgjGEcBImtfMyjz0emAcuPEa9QmzAnH2dhu0DNgXJrR
	 P2hsAtZdMLhWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0769F3ED5C
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 19:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177593505368.30771.5023457051990768186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0658637908a09875e940c6623c53913ddc065fa33e49f8ad0ae396c835e49322
Date: Sat, 11 Apr 2026 19:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775935053
