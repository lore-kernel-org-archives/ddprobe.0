Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D19EE375
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 01:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85D91C433C1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664932254;
	bh=rvU1vVanC9+Zw5eUI+JWR7tXkLCu+t/dbQuaeN6g+/4=;
	h=To:Subject:From:Date:From;
	b=jSa+WwdTI+lAhCmVmIFKV+yV40QxTKvSGYRQ6fzU0w793JlhwMHdGINBYVDZujlaN
	 58Z0nuxSA0HAHkN1Ppye0V2uxAyGbBdZpPKYQSooK/MMUl6Wnq9V5/EG301+siEwF8
	 MdJTr1lenge7msesBygT6LeK3See6Rdmh74KaUm9GBm1W5e+VvZl5FJRq/0j0WS+QI
	 uxV5bK7eN7KKIfp6injbgt6o0mM1ax0AlamWwtm/yCf5CCNkQeahy4Nl9tCsOurTx3
	 sxoQG9V8/pk0wxHa2LsDIt/mYQWHhIwwlbntZ1EuCbso9Mrh9UBW1qPwJJkAmT7ihI
	 MhcKIReUKyY6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 687F0C433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166493225340.28604.7679530946658668484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57b73ec26324183a6807b8a5a4b5d45794e9c51a5ac89a6f0a9c2aafd56b69b6
Date: Wed, 05 Oct 2022 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664932253
