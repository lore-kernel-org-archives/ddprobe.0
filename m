Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178F217988
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gssU1ouU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87AD6C433C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704259696;
	bh=lQ9pimUPRB5rmKKgQoBHV8pCcVkoGE/m7VMyfiYiNa8=;
	h=To:Subject:From:Date:From;
	b=gssU1ouUcL1EUgPLUwDZCYqQLGm0Pv8X6e/8t7hlBnwltojU0nKiIHu4owQ4KzJO6
	 /kalW2Fgx9MApKCMy5c+mq7H3B+UN7mV5jnd5Nkgs76ZiAWik04vc8XoPiOZWZdf2F
	 QqZpzdwbecKJ4o9rPSuHdIGhMvPpQYHyPNYkjL9KZAtsX8G7dqPyUOeUTF31JCHsR1
	 BF6ZNM6B4Y8hiX+jFpvR/9BKKpkHU+sLbKEztILPDsptemX9pWHvM68nUnml6wXzdj
	 HgHUUsLaXF1y/+L4n6xcnC425+ktplE4eacP62y6h3hpUOF4xI8tX/Pwcx4wS7rKWK
	 UNDzWkmmaz0qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66C4CC3DA6E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170425969641.16131.10248737399023316646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0a5cf92a4fbcb39147609512081e1ef4a776b614f4db3596c0fbc12e747047c
Date: Wed, 03 Jan 2024 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704259696
