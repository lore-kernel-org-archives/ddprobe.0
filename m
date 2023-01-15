Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7077819
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 01:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8ED52C433EF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 01:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673746287;
	bh=JfeMQqKyHtydsMPbBDr1OksmqYkQYGewUVcf7HLZdSY=;
	h=To:Subject:From:Date:From;
	b=iaiLqYFxbxpNw3AWM/qzQdrVRuqlhv0IYL1GpJ/c0lqeigC8LaQHSjmDSungGC4aB
	 gANJ2x+nWhWcRNJ7gb20Qvkwmrs0WHm0GsH4jJHl3MkF4Mzs3VeBvdQVhgow4b1Qh+
	 fJoCaW0o1yQnDiUypRHvWzfnYIoGUPsFiyD9pyabs0+tsz3bIImP3zYoDYnIOz/wdc
	 JC0lUVWn89LcfD925c3GiPbc0w48A55UL9n/7LdF/HCLVySOuxRNRSDyqQ6BIMAu4E
	 hIQ8zRSzt0+SXtZs7wSTWlWOO87+JV/6UQmAntC3Uk8ZBv0WXWiFT9/jW3CIz4V7/A
	 o65+FIlR7jGCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 752ECC46467
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 01:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167374628747.29278.5966257562261864881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b60c25f6ddaaf401b7cd14a8a3c56ec914746c021d36e6eb68f876da40ff3342
Date: Sun, 15 Jan 2023 01:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673746287
