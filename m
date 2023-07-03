Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5301BF9C6
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 13:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E12BFC433C8
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 13:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688390168;
	bh=tZaWGSaHdI2BaLILbfsLadN1aKGV85iZB4dzKS8PIIg=;
	h=To:Subject:From:Date:From;
	b=NVuBUnXYsIAsH7lRsttuAL6WrkfLn5lUU9yyYOIIpHkfvcjxW8Rn08AGMQTsKqJAY
	 7X8YgqxZOT9JqzMipuS5n18xI+GkgFtXJJyWU0HDQdHgkTzIkv1DtS4TGSOgk2yLPx
	 f6h0lovYx/O0kjRWTG+yL0QNKn4SgVWGK0FboNpKcz75TL4NEP2n9lTYdGgtJH5wBo
	 y9gAjoAZvVsFsPjjjvIbnrd/+JHNSiKKyopWafKCK9Zw4V3ZdlerDz2U6npV3bCU9O
	 +23h7jkQugJwLrByQnPqw7JJjgQ0Un3sfW1M1CtBkFenye+Yr/D3ndqgBwhd9Z9cij
	 xNl0+uv0W/f0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3556EB64DC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 13:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168839016878.4068.8785913553709363976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b4ff5e81d4774f4739de0bd26bdfb0efd0a13f7a5161a81360df8426bfd4ac4
Date: Mon, 03 Jul 2023 13:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688390168
