Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D9F0C123
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 14:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC36AC433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 14:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688741828;
	bh=Rn8CRBv6UnWEgd9o3gVZ+kA1O3SXF6d1r65TSHGFKWs=;
	h=To:Subject:From:Date:From;
	b=EDl8Z5mjhCqRNCh0ka3F6MZNokimSj6dutWusM8BqI9/ak6oMEbA4/EBX/Qx49I1D
	 mvxvTharSFlCq9/315UMH8TJ2NAeBzbZBMMbPBxrtKPd20eUBgepnYAiNPRUTexbTM
	 TN1OTEJ5xMZlhjXXN3fAEgmxxtYp30WYrNRHgDOK4PzUJ8LsaRA//urdorHoZ7oIuc
	 5MH8D990gLe0zgSIFlntjoOFeFUOI+RoLhPmes+DofGH7/0W99HTwMMUTKhhf2PvtT
	 2ycJBlNqT/LlyKyndH3M+H5lXME+O45+arww837vtGetjOn1q1hJU+jH5tNbl+5qxx
	 Q2feemKBb66Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A37E0EB64DA
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 14:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168874182866.19600.12796163170323871685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f041e65987247880b016dbd45d3ada6dd1dde720bae428da6438e00e08c27f27
Date: Fri, 07 Jul 2023 14:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688741828
