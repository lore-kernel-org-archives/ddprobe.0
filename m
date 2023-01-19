Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB3DF10791
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 22:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86201C433D2
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 22:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674166887;
	bh=zUl8QBqNhMNKaGZCvZao5c5Ws6+RS9i6fj27E4YndHU=;
	h=To:Subject:From:Date:From;
	b=TW0S7/9GNWjP8HXR1eX4Dk8xjpKC5h8I0Wk/S4PCHUNwInB+h4uavjAW+jBu7N0Mh
	 R3dlyM/DNSAm+0V73vbBeyeLuDyKJXOmWQq83NQ16pNeeEfrX+eYuMg9ySddjMngJ6
	 yBKHunURKxTdHLo+D3ztk7Z2JUBwaDQeUst2mZu64wbu1TWQolzATA5DVSyOlrP2Xc
	 9U3NZjRnnheL36ggGUfHktByTtzKL9UkYBqYgOoO9iswbl1FcXDHo2mQnlmfq5p/07
	 2S9ssDrBGZ6eDa4aAmIMVcxAW8jhY7b6lbwWeErH+2iy5mqIRE2yK0QvwTdJBw6Nlp
	 Dm8XvCMHHvkVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67D36C6379F
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 22:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167416688741.15180.10193452979996214723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acafb9e3ac98f546cd45050ac0993717778ba2ec2ba70cfe28f5a57d35235c8e
Date: Thu, 19 Jan 2023 22:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674166887
