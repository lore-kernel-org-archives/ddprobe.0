Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABB9E7F
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 17:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2262BC433C0
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 17:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686764829;
	bh=hpL1Wac8mf3dLCJUjpVN3qaOtmmsr4JSDOxRe1i7d+E=;
	h=To:Subject:From:Date:From;
	b=MJBsU5CSbxm1JzyAXqKMssds5A6hYPW8jjzhfQRgcFFcC+MSjS8Su/1KPbHzN9OMw
	 Z4mVtTmvEOsAyE5S031lInxvf5CDzH+bWRwCnHEnMAun/TqyqGVV3230gASDIhBdyy
	 O9PN0/v7YWsODzEfNosO7dMuNAfcQHmnFrsdOqcC4eNveS0Qf760nqeXv/6UIA+iWt
	 BzCPa30/iyf5D62dGqRTB3XcYO6sFwzyeNkif2l1VzBkP5J9/e+xxIvqWZUHwCrJ9q
	 N2xDhdbAwt0uxaMGjYBeB2KCZvfYpijVbcerr916TIZeGqP0NLcyuivknljMwSFxJr
	 P8ZHtSP3HJ7SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01A84EB64D8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 17:47:09 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168676482898.26991.8973701248533958718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8853521dd072801e9654310956515853a61bfb40d9de805e96f84b7b73254bf
Date: Wed, 14 Jun 2023 17:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686764828
