Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9AF27E9
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 01:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72516C433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663549253;
	bh=njdTxmed18kBs2eNWMmETa1QkY8qENh6jUziI9RomCA=;
	h=To:Subject:From:Date:From;
	b=WIUwJmn8a3qvEA2a7no8KNL+My2AjnKnK2v/gike6oawFvQurPO+8Bl+CNFlE4iHF
	 TRBUGLZyYYVVr6Uycq5pa5JotG60ZF0MYhEM0siLpGazT7NzqL4WspB3Ygun6YEm//
	 z+S90ELpQGmvZgoMkZ6YBPFhn/7XzuksXV+3i2YQdkaWZRnFCQYW2WjI9RCiHMfTAJ
	 FFUk0Qai4YB1b22oZEqDn6g4cC/DIni896BgNmpMdMAMdWjYOY019MaGfbdF2uqgt1
	 26/9pnH0iKGXdL5WfHKs673/vOo+Rvaoa2SHgFpPVkOzok8unQWK6zUigVska8CQ0H
	 9rUly/rBUMVgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5477DC54EE9
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 01:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166354925332.6043.15537455051328539581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fedbb602fb309e92a741855bcdeb66c4cf225c74a79ea6f49902752b5aa4d46
Date: Mon, 19 Sep 2022 01:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663549253
