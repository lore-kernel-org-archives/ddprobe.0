Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8349B450F6
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 23:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40D2C433C8
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 23:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695081308;
	bh=fsDftrFF2aTLzQMT/lptZ5jX9tOyMRckJX9b/hBXUyg=;
	h=To:Subject:From:Date:From;
	b=cLsRueLVjMm6oq8qfbEJVfpBAAdDMl2P1RtztdyITKPS2LzV06lYY21k5f0PNRsXF
	 5Tp6RGDsOO9OJz1I4QWRsJAxC3tNeoABzXic3KlvnQcDpY0qh7yinzT8Gzp7wN3soD
	 TTaQ8TA/yg5wYCljcqZqRrqMJDgfodVIkTemvNul0OsF5ZZP1ZPNOwWiTkB1BnGUvA
	 tovY8q3W9/ZHCcgPn1arTgSpa5DSkGxqlECR+5mjjqRbh7cdDy9wI33DTs01dPBs13
	 IAil9PEJMDTvc4pThEY15fD1ZdZk/rSgYdoZqBctG/JDY6RowQWTI5sbubtVBQFhfA
	 8RIilvep7gXCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2DA1CD3424
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 23:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169508130872.1039.13450301095807481238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff5a9b49f80d00d5974724b8b72aa34869a2e72262ec69a9f9492912f362c135
Date: Mon, 18 Sep 2023 23:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695081308
