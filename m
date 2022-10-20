Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C02F17B
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 03:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 742D1C433C1
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666237253;
	bh=As/A5IKFvZEm59vfKfoQkGVD8FScjp6vC0WowfIGDog=;
	h=To:Subject:From:Date:From;
	b=Q1jSf3tdnBD9C7LaOcm7qsLCVvdzcEt7TAnSEpM6avKyCjpxtRoSaSriGnn1NmAcX
	 MTdE2pcGvfEAuOAXRRRJWI3fabdhmILIWwQHgXodlpFqKfUw70AUPuGfXMiSoe7tUw
	 JV95qRpfRPS0qB1FzG5KMPzydRBz7GBhiDxYdyT50FHHLkpEzUu9Qm0w7HvRkqgBaP
	 dPNufEDnl8dV2wn5ZtM2gdC/ubZVaJLU2TQcSEeqlxTKskZyZ+oydxWmsg2chTTAg7
	 UgL23QM2KxurMWofo1mjdIa8ln/YGzA3y0efBfE1KC5e4gvNBciFonT+dBl/UKVNji
	 0jTubBit6KDsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55D07C4332F
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 03:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166623725333.14243.2882459820850996065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea2ade7fe93d2d546d035ee89aad4d707255e131406586e29c325174afddcca7
Date: Thu, 20 Oct 2022 03:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666237253
