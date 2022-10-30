Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C57D1194
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 01:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B0F0C433D7
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 01:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667094654;
	bh=RqKClMwDXSqQGXvMoCrXO5lmBHoGRLrnwjotm6czUOU=;
	h=To:Subject:From:Date:From;
	b=Bkg9itW3Wa/4Ff2iuZUqB/TNnFMtEaM/YmcK+idS4oYHX05sX7aiZCpkqUNM2pZQK
	 1Q83oIu77eb1CTcvXbH68aPsPQEvvPL1Yx27yhLqRhr5pismDN/x/eyxo+mPsE4nMC
	 ond4Ar3VlzTJEZJXfxrL3ad0WgJUZMX4rQb60bFltzqIEwOQC1cMKD8TFRODPZURB4
	 6WBmqPin0fUIBRZ93VpHo3nYpELhHAIBO16igASXodQASCOuxO3l+PPxfN3tCewsX5
	 ZSWOCfUKILFI0O/vuFpeT1n/t8C6NEB+TD8uo4pWtQgH9LxGyTJ0nxWN2zMPFQe+at
	 XnC+QUKetjteA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EDDBC433FE
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 01:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166709465431.11211.10837140856667237514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c258813a501027c18c2797bc1bbf6130aaf2b75eee22b69b610d336a57ec3687
Date: Sun, 30 Oct 2022 01:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667094654
