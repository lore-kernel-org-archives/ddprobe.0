Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F545D511
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 08:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4848C433CA
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 08:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690445528;
	bh=qS+/JZwjzLjiv/1MVQ8M/YBwGMUB0BwdoovzU0RxyVA=;
	h=To:Subject:From:Date:From;
	b=O/NJSyaxb9jtFTNt615ylAFV6pGOodf4XLyLMB+HYm7+U4JaiRr6tFQVvf1rSV/Ek
	 4+xzK/dLQrRAkadrObzJviS1kSd/SyU+06O8pAabkR5Kh/sgZutDc+85UGw6J7sort
	 fvpnI09kpYWmy/gxxhQixJDliM2NIYHnzDbl0qiiiefrX8fCxK4OKZX0yjE9Ci58GX
	 cwLlzgJ72CSqjsTTyAgKp2Wlf+qEFnogXr1jlaSkW/zkXyeUdrNuf02k2fTKTSRnxM
	 uQcH8CU8PYMvqZqb/zY119sSOdBGWZfJSGfAgFVUF6jI0BRlENEe6oWVJM8sZf9UBH
	 XHc9BQb88+GQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4DDDC001E0
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 08:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169044552866.10272.2712563327322870155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4ae8de1af146d7a5ad499b1cb3d1d216243a3d76ae19efa6870d9c1f234db29
Date: Thu, 27 Jul 2023 08:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690445528
