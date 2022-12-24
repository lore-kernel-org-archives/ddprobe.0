Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0699120E1
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 05:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93DBBC433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 05:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671860487;
	bh=lhOckfOeMIPJCTrdZhwF7E1toPzj4mGIk9NEEozgcvc=;
	h=To:Subject:From:Date:From;
	b=lpB8vNOevSFQtP914I/ITuvhOvThydsmD7wcvQ0g98ZhT0gqOOi5U/LGHKrz/BmnF
	 r6fDQb5JvBFHs33yjkjsfujAiwf76kJmTTEPEtsQ2MmP50Fjx2/OV0PDqi11sAFO/J
	 fJQNM3bN8HT1ZRkoGRv2NZl+cWc6g/KHS9TsvgIbmoTMETLarffmEXNiGWU03ppRHi
	 UdtNEr75S0NVZibymeS+HMuFNLzNDvJc8LUH3mkJBsEe8wsm+Rt/cubN4VNnngZvAi
	 HWBEcoFNsZliqqDQj/Kti10bxGDm71RqCgdkhGg95vc5D8G1OdIws8NOMKIFSrRd6O
	 BES/BUFLl/l1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74268C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 05:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167186048744.20408.9053877953331543101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d3da28ff45ed4dd6b898cf0bd8d64e995abb05dbe34593ba8a3cf5601337062
Date: Sat, 24 Dec 2022 05:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671860487
