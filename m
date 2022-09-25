Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAD7D33C1
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 13:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C192C433C1
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664113253;
	bh=LFHNkapZC3XCtvUwgfr0dkcFro7DWDDimHcR+8ZUI6Q=;
	h=To:Subject:From:Date:From;
	b=rKQA6Bt9K1Vb1nE6LXmK1VumrM2c48+EjupG5DcF/WXJuQeh515ZGZOCpH6bTW7LJ
	 zcQ/Bzur6B5rjnE4aN+vHl53mCCNeFv//EIIG7ADbFvB1wQ11itMrijHvfCFOOikdw
	 /z4bbfccG0GkDuSLve8IpJxCb5c6Zb4CByttwgsQjC+7nBd+R8GYq3lqusQIKEuKQ/
	 9veEx6UEXyvlCw3zYnEx0sJ+6xXt0wP0qOB1mpjcrxnw8HFP7J4zcJwrcnK/d9KdmL
	 Pj8K1FXvWTR+ZaLG2y9pWzghrAaz6VaZrb5wcRk47jKKLH5JdNChDxpEthl31hmvw6
	 euH7x1tD8LFHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53EFFC6FA82
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 13:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166411325333.6525.6464329679444727013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 669168332eef32a980eaf60f01962f8891bad02d1b2449ddecc6fabbcaf3406d
Date: Sun, 25 Sep 2022 13:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664113253
