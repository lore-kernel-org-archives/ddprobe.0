Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64867BE62
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 09:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD420C433CA
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 09:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688032388;
	bh=tiVCIRTePAazICvSG9YOhFDxEpKpPPbqoZc943Ee1ug=;
	h=To:Subject:From:Date:From;
	b=qMKaQb2G2J/ldKWns39VUCAJ5NykkEaWusdwcAD+rU+cPqBhQ7khq3FOy2nzDxLLT
	 YmCMfdkK31QFhMAq+BNURVAu5Y807ofO23bb9phjY2d3bH6aKnjGOQ+btcWcycqv7q
	 NH9wN+acQHQoMlrI3hG4Pn/1vPn1l52nZ2HmHaDAERt2bkvJVut7EH2a/449sMOglF
	 pbhy6lz6PLzuVH/A4vCj0uMKgZbIQ303gRW3BZtdLoo9VkzIbp1ubnsMsiXJwM2fqQ
	 0A11ByE3Gu6mgd7uLMgVXv+4tnfQcrRrxmWxlFDe1llX9A75Uh1ZCOn1hQiCkn2UZr
	 GxjykLVlpGq/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEB3EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 09:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168803238871.12263.13302438630137784418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35ea00f9e0a3eb5fa0de8529b708112d0650c2245aed2e9ddeaf2e3f4171b0cd
Date: Thu, 29 Jun 2023 09:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688032388
