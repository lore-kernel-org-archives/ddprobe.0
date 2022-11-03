Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B83A56FCC
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 13:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74578C433B5
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 13:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667480454;
	bh=nbb7EXXlbJQiyXzbox5gmrSLRvv+xYTFiud7uX0OBCc=;
	h=To:Subject:From:Date:From;
	b=sKVLylSfFpJ9qTVFTFmM2mi+dIF9R23T5uhR7b0AKeujlHgu/slQIiPGf7M412mqS
	 xDSbCACUAlgO4yTKRc37w30n1/pOxuwjHN6CzwLormBZggOAYvMEe9wQzqWI9zVr/8
	 dG5rvzttO4q7kAjyRxGJQLf1/cYQyBDxJ0DfHCRPX7Zw874DFwNlGLQ+h0PN+vQjyG
	 BJL26Hqi7T2lJeh0lhWGwBkizyA0v+Ahb9JO6I1DRZLnqGk3vM9dDLxjRRT/cwQJL3
	 K53bIieXSovolmVq19HoYq4X24p5uFenKnao4xpiv5eXdB+VUysOHR9X0Amur7/R0G
	 0haAPvu7nvBiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5769DC43217
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 13:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166748045434.11068.6360660571055047765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 563293da2955b247c62d041087480ab7579ba430151405ff2260058573113097
Date: Thu, 03 Nov 2022 13:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667480454
