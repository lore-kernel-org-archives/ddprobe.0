Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F545111F
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 03:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB21C433C8
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 03:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693451048;
	bh=PpNCZ7WI2iZTmsutUQ/7dPHBUejMMGfiBcj/Rn6GBzA=;
	h=To:Subject:From:Date:From;
	b=TJbz6WBumKezyIWAFbc0k+MD8Smqwm385QD9hU7AWPZOTMw8sutOhIj0k8KTFcJLO
	 Sv5hIThwssWxsfZQKJ4eiMMKeZ00HMspB4c9PnwF5A0oBYUkIK+sDhYM8eo+fnKfWg
	 2IkEWJApARatPD7WWx0CiVnqPP8MouIc5wW5txSbb+Vnbu5BnlqTXJk09mU9Aw+dFb
	 FzX7SFAQHuStURpBfd9NQRJ3k5m4c+7koWaHqbnVF7rM8HU9CD6+3e6qGiPveGYAtV
	 Og/QvqUQ1KMzQJtVGB4cx18xZi4XYezETYlu97cHhbozMaCiAgqPa2M9MnZk85LQPC
	 6Qs7iRpdzakvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC56DC83F15
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 03:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169345104866.25628.8755875007542121157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf84416772fabbe1bf7f608041856fe8d1ea0afdb3ff85451073c0c89c5d5ad0
Date: Thu, 31 Aug 2023 03:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693451048
