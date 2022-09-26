Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B02D2649
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 14:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C6F6C433C1
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664202653;
	bh=mst/tCfhetqHRA+0eebFCoU29KkqjyJcVg/4S2cr6dQ=;
	h=To:Subject:From:Date:From;
	b=d+GMbNXAIBRPbGSjOzTqzxv39zXLoE5p9g4OwqY85q7am7yRoQW/mMafKBtJDaiRb
	 TToIh35i4kRJ7gBP3Pil65dkV1eZrGWR1ACkh9Uk867BN8ebtnytTsa2sEWIpf2Q7e
	 r3PJuXxrZcYvLa13uCIOXVY9WfBM8sKwmV17S/xPT8WKJu4PKlr7bkJ4A9zdljOtdD
	 jYrv/wSv5Ygm4h65fLv8117Clq0EQNcGFd6dQ/BGiiMCW27ERuptDNk5j9CnBXt6+O
	 iiPfs3JDe7hMFeTGIHIU5hYI/Ma09y7w10ljrqVqCmaUocW9JvT64ykFW/IJPIt3PJ
	 duMoit7at/Zsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53C33C32771
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 14:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166420265333.26704.16422424215522691571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b094b0c3f2d990b2067280adf64dbe6f0add0370bc387bb3bef4aa476fea6ab
Date: Mon, 26 Sep 2022 14:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664202653
