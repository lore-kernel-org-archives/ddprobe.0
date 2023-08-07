Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5485C156CA
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 18:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D5AC433C7
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 18:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691432588;
	bh=3WlbuGWnbIx0gbsU73UIucv5hb6Be/KLuAhR1wzW1oA=;
	h=To:Subject:From:Date:From;
	b=Jm0AdfLxbyG0UTktCXVHS9HZJp0RxkS/ld6NpKM0o1zT3yrdtjeF9vqkAjzk4KJtE
	 6OJOaW38JXsR4PgrVcZfcjRnLPvgdAQqqqFeCleotM+j7iKbbpJMuojIQKAYdWL2Ml
	 Ou6Lp08IvZY6MZD0n+BFPXaS58ZsfDEz/IpohS3cZQNhNnwlSbFDkKGGQHtbIOdW/X
	 MFWPbkWehpumL6Wdibo4F8SXUQgM1Pu5ZU6ri5tGpWdcZa9F6ueb5JV7Yc9Q9575Go
	 o2ly8AbpSKZGTMUjMEtegmRuzMIe5ej03wtc2fT0pczMpFcfFCUlp0FVPSEzKQeK/E
	 ByjVCsGJcyjfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8103C001B0
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 18:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169143258874.12098.14364759648494262869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d71d9bc8ce7ef1b1c84abc3cd13b0211f203399023ddd7fd1dc4150bb16f883c
Date: Mon, 07 Aug 2023 18:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691432588
