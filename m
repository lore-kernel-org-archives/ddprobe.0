Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E95E033D3
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 19:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88238C433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 19:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671305487;
	bh=AcZkgt4e57zXixA3+/RTw51bOsSpSvepbnSA+yKvbI8=;
	h=To:Subject:From:Date:From;
	b=h+p1bhz6L9SKO8BrYIOv2Q1525naxwpQV1bBf1dUEM7HzksQb726sOHLy+01MZbKp
	 QZrmkL8Mty3ZVUr568U8zmEn3qQnipOgyrP+a73tdpzCrHXDKHhLIwZ4i7Ac1oFBJL
	 +mGcBStoO7zKnvkS69UzyYZio2olcjWHtoAILSCQ3N+Gp6UhLoWVM94viA+1EodWhu
	 Manu2WaHdXPwW3cvWf2rCu4vUcDz55GwigpCK/kR4YvPmJs/D71gOTzE3N8tC6o5ZM
	 DVSB5Uztb73piapDQV4ZfwxRKkGJocmeGVO26r7eCEsQQbjS4wRecCdrEAIc64j09p
	 X5AzJySnb5xbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A8E7C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 19:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167130548741.7712.4274335315552106601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3d15518f46401c432eba247592bcbde5112399078f43152d6908ee4d52485b2
Date: Sat, 17 Dec 2022 19:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671305487
