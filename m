Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A8F881F
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 21:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6348C433D2
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 21:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680125945;
	bh=Nj32GsUib6PxAwYlNFWFV5Mm8eZiW+dXJB8dKj1sxLA=;
	h=To:Subject:From:Date:From;
	b=ii7R3IbaVxgef/XPFmyjl14D9e6pvQf8ROkwqEcJ5Hz5Of8/UYW83x+No0oYjbmp3
	 4lh+vYVjlamOsQvOdBOK88MXaLcgPHeZpseYqTlgscaS+1sjdsqFC/6geZ/U5dKmXK
	 wH2OHB/DjoykvLE59PEhANa7i9HoLsOoIv3fIMQRnXAPkM/hCknmn+y7LUkk1y/MXJ
	 nHd1ByZLUQMRCFN1xlNy8DlItadTOQbgriOhEzjjHim8z3pVXj8MWQCqW65kc6EGQ0
	 rvw5Dwb++Oe76yRvcAiuSHb4vrEWgJn4bYHhLvL0MlFR7oIkBmvk2tPb1EQ4Q9wq/u
	 ZuJKPy4TimB4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8FE1C74A5B
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 21:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168012594581.3442.1267848522578544955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e406048622c1fef47221efa6285c11c1d505a45da594f2755d30577ae98d34a4
Date: Wed, 29 Mar 2023 21:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680125945
