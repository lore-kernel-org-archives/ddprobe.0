Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7B502913
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 10:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DB36C433C1
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 10:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667124654;
	bh=XH056vKBBqf2NlCIi7hm66q7s0tCpLSCBAMNLJz47Ws=;
	h=To:Subject:From:Date:From;
	b=kPHCg8KaJHTuU5Kw3bMs1FjqsPyIw8yon4yoRi3dGQkfrEIyauJZvN47zmo5EMsI2
	 scWvRWFy6Z8zlnBO9RxtxgomFglb95YykhjQkVsJNco7J0bOpNow8BzkZSCwqBtyHQ
	 p2ev5f06oT2ySzdP83HEJ9GpCVuffPmFYdutQzBbbXasQbfYOi8Kw1gK5Y7uRLopL8
	 dbwa3sG9/ASxZ6Jxgoz5IYb8i2H5EeZamkNDLlNDjM62aPjHF4FZcGyyihi0Bl4bP0
	 uY0Ynz76iXxPZYXmHhq/ThX/O6pVr6UAB27fhlKu+qhlgHM0MUxWYse7ZwHo1PoQld
	 JW8FyGCRMJ7MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53425FA373D
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 10:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166712465433.20616.14933834921871342762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c09093060dbe564f94116269021217f66133ef46014e60aaa3c0776f93020f1d
Date: Sun, 30 Oct 2022 10:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667124654
