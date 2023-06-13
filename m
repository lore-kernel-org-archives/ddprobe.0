Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7056223DB
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 15:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDAF0C433D9
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 15:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686671228;
	bh=qMfLWvBwyZ1I6WLzawMd8l1yOSg+Q6uEKL0BlPs68kE=;
	h=To:Subject:From:Date:From;
	b=AW2lMhuopErZ7ITQU556a810tOROw8kfVocWCKG9zciW8xEr+vIxrVkKRWHzcqkHQ
	 JNyaH6M4z5pXkouQmUK9xFSRv3m66MYJw2qAoNf5eMvhEt2CO8mphI/VXMPQ0wOLi0
	 1z/0uJYo09FfWVN5yqMb7ueiLkOl0FuUt1QZrYkwRXbAI/EMGgp2LRmHZoNz+4qHgB
	 YcI+zv4C+a6d6G8SfLXwSeRMfp2RML7GMq8554awdWFOYWUGDUyqB2CuyB5iS5wwMN
	 AAtz58fpvJ39r4+bw0Lny/afdVlZWk833cun9PeQCR3jpuNQD74R+KBndkz5x2unoi
	 drwBWkia8VpQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D5DEB64D0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 15:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168667122878.4160.15320994213517107001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27cdf078120a4f933e3f59362e45d397bd7010baee23563973d29aeae913f38b
Date: Tue, 13 Jun 2023 15:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686671228
