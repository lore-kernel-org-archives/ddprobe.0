Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CDF7E
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 08:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC89EC433D2
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 08:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678091826;
	bh=myOmAW2HrCCS6/KmtaBTCm5PUQfCzyWvstx9pH0a2Ts=;
	h=To:Subject:From:Date:From;
	b=FIJs9TcceUH9k+7tf453ayPmcN6+N5oy93Hf1xOGc9Q+7oFmXYxiAKM7v17EUv9Op
	 SkQGsoBVSTahEvbInP51IzyCHk7Bvxx6IiUUrjtoiSLnwlhIKnhsCZ1HF3iKLNeMW8
	 +NROzqrEVeyHaUZYP5oUlMuv5TkNGIOX+I6q2vkpsVe8ZYiEnt+1WDCpeVZLU06Cl9
	 cqLDRcwR2TMySxLL2zomLE56yzyiHNejgFw+y4PUsTEN/pXs+H022OLwNLcjw2umZN
	 i2mm/7uELZOe0Y+CIIYjWaJ5FDp/Szf6FP3gvZ8PK2Sbpe9UBgaeSm+SYWE91Nf/1N
	 T2d07gw/15hrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE447C678D4
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 08:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167809182583.12870.16035434730532471704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2356630038c255d3f6f5e789528bd5a4d01472c6266606848d6b536d704c169b
Date: Mon, 06 Mar 2023 08:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678091825
