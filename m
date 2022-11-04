Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B2910FA
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 09:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B010C433C1
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 09:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667552454;
	bh=HJdsMvTJySRRnBRVgUKdwTQdSaMLULuiDjii69zoLXk=;
	h=To:Subject:From:Date:From;
	b=nxHtqnFdDjl0BkjncihGKGU1S7s1GN311IFpQyC0W86mzO/8j6ShHFf6jnBbXxrSV
	 TPLs7BO+KC6jQ16MhJeT3IQMTdRaPPagg3JEK28TNqz5qnRQewoKNmT/PmRLK3OIu0
	 AyYKFEYwOFRqLzqclK7i3EaXzhtoVAja1rvNAe8H9maIDlcY90+r8dwcVXzIlH8O3s
	 g75f0OLSs8jCplTRC1FTq/QZS63n03vMb97BQbJ6pRfS661fa0VQZMUIWjwM21PbeE
	 7F3mu2zPAUX+xJcozEl/vST6ru3B4JWhRQJ5CErM905MslBvr1tKtRQkPVBPMlYVF5
	 PiozMkDyvYxVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FFF9C433FE
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 09:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166755245444.8483.5112040456405394750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6fed2cec6547cce6d66307de0545e3f93a34d6d53a7dc307a25d77062c939cd
Date: Fri, 04 Nov 2022 09:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667552454
