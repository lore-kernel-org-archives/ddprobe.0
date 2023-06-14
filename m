Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74897363
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 02:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C105EC433C0
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 02:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686711428;
	bh=Z0khaDbiYW+YulqTD+OMqNjffRMcyKHNnrKqDfENBUc=;
	h=To:Subject:From:Date:From;
	b=KVQC4pluGqX0mNXClx11sDwFsuhdO5MsoWrT7QET46ZQ5n/EVuK1/aqfKxyhkHhHB
	 8RM/GXmuJIidtXVxrxlh4q0+l9yoOCxlnq7yA6d1M2ww3r8hNTqG/q5cak0Qz7QM7Y
	 3lc/kDcblSRJH1yIw6xYzckwimsdqiU+vIpXcau0/yumhvywT0qzS97SAm+Hc5ZxlU
	 I+9jTrJZ3wlZKi7YhnrtfkXR85P018X3jGsMTHmNxu5q96XFB+0M0qiHMMdzLCYiK4
	 5T//fXM2Qa8dOE+evXWrMQn+wWkDI3/yga+gvqYl8r413pLniZ3D+NGwzHsEa2FDsl
	 KFtZrJsGqz3fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6BF6EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 02:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168671142867.31663.16296377483464716617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d58d91c29dbe0723b4edea21b3cbadb013d9a60213d0670fe257c548f05a8648
Date: Wed, 14 Jun 2023 02:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686711428
