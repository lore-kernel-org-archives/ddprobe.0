Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9A8846B2
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 17:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73678C433D6
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 17:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668361254;
	bh=2Po/eRGDZGd9m75Y45A/MePvbijPDXFVuYPTYCLeVs0=;
	h=To:Subject:From:Date:From;
	b=WigbfKKvSZPCftS4vbo3AmqQDzMAvQOuKMBkNkriIcoIHO+Xsx5JsN658b0E+cMWb
	 8a0bj68j5Q6ahcTdaV4BFflXm3AH+NoenvmlfcQWSge4+1tamNQLZXV34e1ofgyLLJ
	 SHMPenIjUyoAaPkr7UUSefeWQiBUPnGzG+hIdcxtFv4iD9aaNC6gxhd1Hn4Fkf4ZwR
	 pOJt+Br32Sj47lLz+zjUT5wAu1aRoHJgwq4zb/FoojUe/BMTehJJcbE7vqCuvB7IVK
	 2IK8F2exJdLRi9+BKqJJKtpnJwOFnlGFLNaI0zBzC0ZvLmWZcIrpOp+6yV1UyM/8yn
	 6CSlOwsSPBipw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52657C4332F
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 17:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166836125431.19907.8124161347475337748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b41eacd82a07b52d4a2cf7d951c814aaa5bf29931435b47ab4d91daff9906876
Date: Sun, 13 Nov 2022 17:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668361254
