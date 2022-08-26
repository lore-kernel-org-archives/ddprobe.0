Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C175A5384
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 23:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 776FAC433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 23:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661556652;
	bh=v9nWnZ4fpE3xMEri2w5A9Pl5fEcApUmK/sjAOXrlTqI=;
	h=To:Subject:From:Date:From;
	b=SH3q6ZyGwC/sxRLk5LaeqYIXPXaPbfPqhxxU9s2fvPh0ws/ovcPYYsnHJskiCLLEl
	 IpkBGcJovRqJrDlOd3U0LN9ysu9ROjJQiMSHrmWhLD6UyABCBs4QSMNhporh7O/A5a
	 sCC48ihBKAyuyv1CF9O+Wyq9Pf2fcb3qcnGuSTxWI2+RyUqA2UPaQxCjIDWytWYyLC
	 cWl7fbwOQA724pTaccwltdsKJP1hqfh7WI4gVtJf5Rqhagb1j58Wn7SPCsDkHAIRE8
	 cC+AiSBtV3H3GBJv1p2zbbQmHSMeW5D9KTWNDL6KVk/90EVHgJbbEYD8fo1c2eDq7w
	 zqrxh3DQ38nWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AB69ECAAD4
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 23:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166155665236.2604.7497424759031821689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 247be78b1dbb7e752f74cf7b025d58e1896a4181c5bf17c5c37dd02bc383b686
Date: Fri, 26 Aug 2022 23:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661556652
