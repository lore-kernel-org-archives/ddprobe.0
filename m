Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFCE225C818
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 02:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764986573; cv=none; b=LzWY9W5Fg0Nd7DB1OrZc+5orzcLCKcm5IpPqsn2sweQQ7iTo/MZM73TszjBuWm/1cG2dD9wcjusDcxj4dfyy/Od8dRN4AbYOI/FLzXQpQ2fhFEMssUf2pz+ZyGhvlKH2PfN6VzyYIllb/QuAhsFmRTzEGajOfFkIZM+bTHz6mFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764986573; c=relaxed/simple;
	bh=3UJdxXkkQdwrmeBf+VS+LULlhJkCV7Pxhj2CnGhJDKw=;
	h=To:Subject:From:Message-Id:Date; b=CRnBGfTbcO/cEjFSL9xvcoAp3kKuhrqk9W8AM3dwLn12dsOZ2Bww2CI6eyqFv+/U2+kU6akOPYHgfcZC100zLGhqcMcF4KCeSYxHjtHEogCkGQMG6NTaVCSeCtUhYiPXNPvfkETUJDgGffimnOysTOiUlo3t5MOMqcgQF2f1CKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZW5aIqSI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZW5aIqSI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B39E6C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 02:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764986573;
	bh=3UJdxXkkQdwrmeBf+VS+LULlhJkCV7Pxhj2CnGhJDKw=;
	h=To:Subject:From:Date:From;
	b=ZW5aIqSIY04wzmf/MJrIo0cDHCKYIi5LbbIDRHO/DqAbcEjXCRhXhWBEZBYvRa/QY
	 YXqPM6XJlZQNEibNJiY+PqJssOdfnyr0lERZw8+pYLHpI/uEBWdF2BKjm663cbyTwR
	 k8k9RQDQMgPqxgcir/bu6DpOjsUKtHAk3lRUqXAI1Jpya7W5kkUo+SU0u/GQtgJK1D
	 c7YlCMQvrfcEZHkkiFOJ+PdN5t3QxADbuVALUyLGdM+tFygytSK4B9+ZGUNH2O2cAW
	 ocswEDMUmpDaeTtDy/L1leANBiICU2qObQAqgsjCfD0sdVlly0n8he5fe3Nrkf/5rQ
	 kt/3Vvym2+AlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2237D3ABD6
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 02:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176498657362.25676.15687110589579580111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef13e03878b63cba6855689cb4159dab385fa3fa572cdc378217a0fb883ca441
Date: Sat, 06 Dec 2025 02:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764986573
