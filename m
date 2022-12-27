Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E74C062C
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 01:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 974C6C433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 01:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672102887;
	bh=/46S1pVF8ggs2yK1IzE+3ufXPhHEiMPklRckcD4MqQs=;
	h=To:Subject:From:Date:From;
	b=tCK7OAcdzBAWWmurNDs7HhRtR/s0zw1UOFeh90+L7UQgnHtbloYdlgWS2hiUHGMb4
	 AH6Cjwa5XPzahW1IIB1Tosj1UZLAW8cUP0mt3tvgKqezGxt/hq3LADNalbixG7U/Cd
	 OtJ9SsQxaMSoyzL0muc3i3QNb02av2tVrKx3dvBvf3qqC+EMIrJzv8OtpZsqi0fSke
	 rkhxnS2A6643bBPqyclYMw9DvALkcRYoFGPyVPlkmz5Axya9fJnNPeU4lKSt7DHWuI
	 YLNG68ZeYh53zm7v3k0R2QXNnyn0TPuRzGiIq/JL7u+rWjf8d9ekUCJJnl54Bh2KNz
	 dKZXIFZOiUtqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AA3AC4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 01:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167210288742.25164.1869948947516804440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3272b3f7ccf84c7dd47eb660a4ed1cbc63e76be31f56a18c8484f2647172e49
Date: Tue, 27 Dec 2022 01:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672102887
