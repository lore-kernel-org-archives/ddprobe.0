Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB5784434
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 21:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69919C433D6
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663968053;
	bh=GuJN40uYN87OIxgvGN3n4TtRuFECYAN2U1hJqtSa+AQ=;
	h=To:Subject:From:Date:From;
	b=ZUcBxDdlaB/a7iKY6mI90famd7ST0+HMJtKeHL2eq4LeYzK2JwJozb4D8jLNJ/Fx6
	 gQL0kRAtic5RsrM50ODf19BtL1nTobkQuSSl173Zgzx18NwyV3xlmQjIXvbci57nfV
	 dz6K/jfNC1bXVkvcsrfI+lbjB8ydM6SM27J9hFi6oMGI3BzIuAb+TwQSaIHJ7ud6BS
	 DzbMdgH2hP/1U+lokn6JceKlvKqyLLsI3Kux2jQQYMDZpx9yQRDUGl+6IjgLKt1uUp
	 LuvEk7DJeLt7jHJaWUBFzfE0RSXP2jpr55KN1BajCb9Z1Ma7JnMok+E0hvtq5w+woK
	 3SKEfT6e3a8IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EC3BC04A95
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 21:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166396805331.23535.16074144564447283301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63d060314a481aa10989576f35d166915d7b4985588e46ff75403ca681ed29cc
Date: Fri, 23 Sep 2022 21:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663968053
