Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB381841
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 02:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8592C433D2
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 02:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674699785;
	bh=ZGugDJXKl775XcDd0kXpH0ggOwRJ4obcxcXXwcAwqAg=;
	h=To:Subject:From:Date:From;
	b=SSNOja72mDBxYHowJsKKLMRn96cedk2MCkL2VZPW0V5iSy1zs4dRPxl9VjGGqf2c9
	 2C22v5qy4hKcnHSyfbu31viq1pDJE/DdgLD3rdeEU8Lo6ML5jWM+sQqCGkh1ILKY6R
	 Jk1VTF/bbBv0CSKICk7ucRTBWhs5DJUAn4oQOcb12mdXrCdmcgGifJj5jox+Y9iOiZ
	 SJjiNVw7j+RfI127aYH3AAq3kPgZ9hn4b3QCv9B3J5pCxogZEWjOcB5nz95OZmOGRg
	 jFJcvnQMIb7t3yZ7jn8IWkXE667MzDQxgPGjSduAtbyAnEHXsAEOMybS4fB7zR3YRU
	 dRAtd4tPr4cqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B87ADC54E94
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 02:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167469978574.24662.12652788875770117872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ee3e06dbeae1ca07fed52bc44d022ac3ac3e1a80fd03df8786205e653ce0fb0
Date: Thu, 26 Jan 2023 02:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674699785
