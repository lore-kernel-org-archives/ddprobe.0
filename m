Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A7B27483
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LD4gb08/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 813F9C433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704551296;
	bh=kqCL1qvWRprHUNoj8+wF0XCvOEVuewEQYXbD4TOLXqw=;
	h=To:Subject:From:Date:From;
	b=LD4gb08/Fn9Za126dqZJjjZB5nqdyMgR8EpnFxTgNy9H7TRwh9n3YvbKOPD/Rch9I
	 vBoze0uYeiCi2Bszo9ElLTVe2QElJkVUzhE2qN+yFipIKKj7RlnsMjWumI0I+n5BbC
	 K5t5CODaxig9AYP0BlG1KioNMweaOTiJecCiN6e+8cPj1tuuEXvIhUhr7FWOJ0xJEf
	 loFL39J/tuleuHEHtWJxAcL66G25CqRAP7KM8AHhZM69vJipfmzZbJE7GcegCx20Zk
	 aNan5umSVi8N+d2WBXBRxaTq/6ESHJjV4Z0dVXPPFK29258Uc/7DYKhOCg1NWYji0D
	 z4KqBTNIj9irA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E3A0C46CD2
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170455129637.17274.7785987474896371925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93661fa567968c512570c6c68c27eac37ade63cd9e4b6334b130a034176877b6
Date: Sat, 06 Jan 2024 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704551296
