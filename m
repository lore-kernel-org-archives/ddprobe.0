Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C81710E4
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 05:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE5DEC433C7
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 05:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691732588;
	bh=zfjJvO6K5izXz5TdvOVKRv1W3x0XrpqWK1CVZR7twvI=;
	h=To:Subject:From:Date:From;
	b=Z9xFLhvUlhQIGaXGhJdmNgizCn3K7Xp9hetA04iPP4i5/X6PFBDvuD7surt8ml8zb
	 1Npz3POtjAfAhf9m1mzIQI8p6i5hrz0+0indL/OX3IWdMqm2PelmvWaGytpzh0xHDH
	 naHWXW1hFKVfe0gG3ny5VSqphpQTIiT6BrKLBMXN+jW6Cug4Mj/tidyGBGvFU83k4C
	 EFWUjajIP8pGoZW8l9Bxg1gOH4JupYBxhfdCQPEeeLLyfOJ7mA+UAbcMcoY26dwDlp
	 ncHEyqg+PKJiPbsH0c2bbJaRhDviH+fzA32GWcGqYGhSlV9MgWfALeR9CxwuWAgUrW
	 Zksyqi1xV2HZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A53D7EB64DD
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 05:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169173258866.31397.10678424664204061259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 615a80bbfdd7a92ffa7c73a8aa25c2e46d2e2109cd886a9ff0bc058c3f394bb8
Date: Fri, 11 Aug 2023 05:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691732588
