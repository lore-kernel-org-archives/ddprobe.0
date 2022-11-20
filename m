Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEFED62B
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 04:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F78FC433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 04:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668918054;
	bh=1qt2DbzRUzEoWLcwTrALD4q2J2CkRQY/UnUKsUfUTHE=;
	h=To:Subject:From:Date:From;
	b=m2ItWIUi2Qb31x4p7qs1Ho4xhYWg1N7EA3J/948itQZv/dMtvPfo4QdHplsQi+Yv0
	 ThSUBLujZC2dzyVjc8pKGCNFAuE3+LhcPcd1wkXxkXuUgr9RdBuxDl9twy6N7oEG5W
	 cQL2pnoM1akjHJaQbiwr9mNHqN5ZfPBpq2uWxPgJ829pfJJ2ryMq14Fqaqs4v1kxsa
	 rraSpbc3vPFu4hLjNAeATfJaGgCHB1bCae0NLeXhtxvwph5kVR3PGpCcMJs5xhzYpU
	 RwOj0ECSk2w/g3zDBe31LFcxn0XUIID827pLp1QbryruLUVjKRucqhWAyqvp+Tlq+A
	 0X2SSSsWnzSaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54EDAC4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 04:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166891805432.27420.5933465209930545734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6d17c7d55e4ce0970f04961e7b1386fc28d5db48d6d3dd0b318ecb478b04244
Date: Sun, 20 Nov 2022 04:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668918054
