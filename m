Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E699DA3F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 09:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E87EC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 09:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670578287;
	bh=5dNWvDZzekgSCgWKPSRzRV4a6xvoNH2qINWMhcFqgAM=;
	h=To:Subject:From:Date:From;
	b=d8Ein74j930QdU1vE2gXyYKemwdEtG56Tikt/MjUfwXkPNr94LNNQy/KPjyXPj8Lh
	 UE0txfD3UY/LQR0cztE5tM4LDxLDx09/zB/bp9k7i/9C4O09+IiTzKjuDRVlVlm2eK
	 y42wCelfY71YWFLGvRlTdmB2vGUV1BTLMnw2y3gZPNrjNdrELEDDw+jOFcATXZJ88B
	 xP5JTSHEePSaQTYbW/Efl3M64Lfx5dI0rdUsunNntkUuZyyLp79arnlxZVi95iEK9d
	 pdORLn6Y8gf7CNYBDlNC6XmJp1nx+YyKMcwQFAxBaEs9HluL1DwQAwLUJMxWe4lnBM
	 9ACotSXA3IebA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6298AC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 09:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167057828739.10596.13542459309596782513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfd266bca78b51fbbde1bb7191b5c33626804e2447493336fedb48f508db2bf8
Date: Fri, 09 Dec 2022 09:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670578287
