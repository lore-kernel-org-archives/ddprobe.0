Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D02167E
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 11:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D561C433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 11:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671534687;
	bh=NqrMQBsMNvEjh9Zj7KiUM1VK350Xe0TTukcQsnQbiSQ=;
	h=To:Subject:From:Date:From;
	b=OOvMD0WcRCMcspl/N9bgwRx5XOnxNLq/5qDOkeBooojJK15NTN5+FNz7I8AI1/A0K
	 EDa7jCY1KOKsanODAkug/o60c6FBoMD9lFTL3gsieKNuiVajDnyqmObGdaTwXjVjl5
	 mZZxfsVMRU3oRoH2ssTqSOdGDlAijzwUCwwvYdIKwQk6e9ysAiSYBnqiHZfbHf1lka
	 9k6tyL8YUwDLzaCXZJdOwMaXnNH92YbfdK0lYL4HdHRwGG8HBAP9bUmcEjjsH5IlZZ
	 wrvEzrmK4HS0v+ZTtdfP/JYVF2cZFDqsDtXTYkdF5+q4HAc53V8QdKF5I036BIuATP
	 PuhuEm4tB2KPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6090CC4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 11:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167153468738.25589.7706366863814869784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0a04b1c6fd233310e49e7201e9d1ab095b647814b564f58ff7338c9c62fb077
Date: Tue, 20 Dec 2022 11:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671534687
