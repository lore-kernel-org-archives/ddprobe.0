Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84A6C1F94F
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 15:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1FDCC433EF
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 15:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685978406;
	bh=g2G7EWLGfJHAsCHP3k4HMuudFtQDxhTST/+9Uz1pIAU=;
	h=To:Subject:From:Date:From;
	b=r3eQIIq1z+O5bXZvPck6eIXp4q9CiFmFCJZ1HTu7G3LMpPSdRv9xm0KWPdbkJu+w6
	 4l1UBjTOZ0qekFOOg3vQiDGRS93bkqXkLwf/7r94YYNnj6Sv6jwmALWExMQxJYuYtB
	 sa5Dqq2Kdeu0ugH58/+f+hhu1/xBHYz5MsczYzve4ye8H8nq84R3CE6WuKHHq+h8kp
	 i5xl0qvslrxaO4kw3zqkXELlJfQ1JAikxh6OokuyEFMzL7lZ0cjvQWPdUCG5yMN6cB
	 jVRAhqlOHJcNxJFBRjXAI+6CG5cQfEaNE5IXv3sKg2s4/TM0OL1TxPYcCo85oleASW
	 SiSv65TdcyDrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCB45C7EE24
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 15:20:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168597840582.28711.6467960461861656772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 683e2144109e5800a18761b00119b7a2d71f300e7f719f9df68c62bb8ebb2e86
Date: Mon, 05 Jun 2023 15:20:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685978405
