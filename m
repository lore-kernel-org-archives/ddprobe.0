Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD3501864
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 05:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68399C433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 05:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668404454;
	bh=uJgCX8gIbQV3EMqQy60K0FARU1Sg9FWmF3BvD+cs2o8=;
	h=To:Subject:From:Date:From;
	b=AjAMRTnvGleZJNGJz7/FOgOkmd0bl4Q0529x5mX+9TkZClWw2lWApZoNPPB/xAZQb
	 eb5U1K0zR/cF5wlNgfIqkyvWT2WKam/DdCk6c/lo/GtU86YQw/CaKYVfUK7B/5jS3V
	 x0wDn9oeAnnkOlqESxZYH/Tmt2kmd+UgHulISoBBcouWKuxYbUX1DxGyudidUr7qgW
	 XK0vGkshTZgNh3uhvuTC5KLo7mYGNLjXWY9JZLiRpiRkV6VrkL7B/5e3EZWuyBSm3i
	 fvyyJpbXqIZcn7lK5glOWblElF/BADacrGWHCWbZ2Jh5Plk4hsWJI7rse9+M2dcovO
	 ECekywbKwNaDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FDC7C4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 05:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166840445431.24824.5872665742102341598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbabd10ef5c3f5b5e0c91287b332cc8bd3703365053949b15ff3bda5c457d1ae
Date: Mon, 14 Nov 2022 05:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668404454
