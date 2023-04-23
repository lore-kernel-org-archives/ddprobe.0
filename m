Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0A063B4
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 21:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDAD0C433D2
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 21:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682286065;
	bh=CsChsIT8k0tfXNuI7iDTS6VED8CQJcjWDlTKA3XFUEg=;
	h=To:Subject:From:Date:From;
	b=qfjrJ3okhu1nturlZBLG1DQEFStHMrkLusi1YPpadpa7KJjtYF8jT9D/wexU+WspN
	 t0Flc0SIU/ZY08ohmKCXVgKlyf94igMvmmyqpIhsfjKagHxeMLnNz46fSch00hVIOX
	 2iJ8ZD3Gvieh1AF6Lh8k7T2h9M9QyR4vABRM4xhyzYrYoohM4EzUx7bZQGoKQnrFKH
	 Y6RWBGy2+NWXm8ipnV8ukwwetIwuAfRCNi7x5LQ5hoDo3NFLK9fKuXLYpGe5a/X23i
	 eQPk1Cu335CKIJH3O0W2yfYjfx0eLIXH0XV0GoZl+BRPxF31L6ejpsQ78/9gZruBbZ
	 cBWV8/z6dz4xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2688C77B60
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 21:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168228606578.29725.10366236550634557502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e34164da116122fd7d23180bd9c6ef2e6d333ce8d260840cc893d2eddb5a406
Date: Sun, 23 Apr 2023 21:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682286065
