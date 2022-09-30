Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEE261841
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 03:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72390C433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664508653;
	bh=gArSxUlUN9qO3cPzDNlq9zYrFM+gEaStxCSkn6ZWJKM=;
	h=To:Subject:From:Date:From;
	b=UJ7RD+6GnohI+HSw5JL3NNIE1/ebUTpLLfzWW8zCZ83ElZbRogSPnVE8sSVKRFPQI
	 7LizWLdZonJ0aDgIAmE3m7TeA0gEKaPIIDeSqmvmNc94yn6AB09ZZctDWTeu0IjIRk
	 zf9PMP/jCeSe7BLM0qzXp/DnmCAhaFZRHQss0FBPxcAL/aitPoAlRAHFIJYO/Df82D
	 tsOalq4omlzoih/hTT5FAwOAxPT+XYmFwDKPSOgOE4yb4Ug3EKs1lrtK2tlYSVf5+9
	 tFJ0btcGJRUCVWo21w6st81UPhb99O7UbRBhRPLrqIRVmpT+IDJxkZl3ORiteE6xkv
	 rNPcmSKGjlHDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56DBEC433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 03:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166450865334.14938.2501686854024765412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a10e364af77945270f24b718b4330ac6407c29874fd1e01672fad2f57bd188e6
Date: Fri, 30 Sep 2022 03:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664508653
