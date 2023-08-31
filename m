Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67115944D
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 11:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBDFC433C7
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 11:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693482848;
	bh=6l1lKSbW3Ge6eb2Puax/SMRbmJIZoT1c4MLYjtAYUEA=;
	h=To:Subject:From:Date:From;
	b=cGuFcU0fZ2WVeV/V0S7roBxFkVmb55kawrtiIgOM/bLQN5/cguN8wuEtT/E9eTa6+
	 1ImR8QFczR6ZIqmswWywzxQW3roR8Zp+CiEYdIUS03iZ6Z0FkhWsaaA76V1ThqIzsE
	 Rd4vy6PntrA55mWqr78NUzy258q6BKufGa3t2z+2QXB5YP8j1NJQwww8dLUy5eWNGK
	 gs6VxbkEFQmZ0uXitfDaE/6wnvQwxDtz8yQJpUWhvdeCJqfai7VG732c4NQUUeCm3l
	 +kbE3X+owSm1rnG2yXwHe2OT1BzTQg5KHfXNBS24oJU/0N7xOx2KccXGsssQfPxco5
	 1glRGTalimG3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB55C83F12
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 11:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169348284871.6643.7823040179710143740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40dfc762fbb478d54ba49966bff898f036d72573987cebf3944b16870b112f77
Date: Thu, 31 Aug 2023 11:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693482848
