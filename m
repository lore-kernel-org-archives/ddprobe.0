Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFA18B422
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 22:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2597C433F0
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 22:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673388687;
	bh=WD6IBPdVeqquOAOkCrOzlMYdANMBnwJhY0usN75RdiA=;
	h=To:Subject:From:Date:From;
	b=aN6/wgfQZXNdiB7cJT85lrNQjjFqNr4GXg1Qn4Cu6VdBXoUKcqgCvVSzmsONI1nl7
	 YSfJ8ciaXRL9rD7hLe7tMD42ntMNZzY4xOmBNoaq3ThWf7t7e+0S3nerwGgNnNlg3K
	 4I/1qywLM+6TOk55xhLMhVFXFg69F+tHmq44MKD/rvBfHdZCUh2pgvVjBmvc4JZIyc
	 9EUnDO2cY1OcKVnNskA72ejoUk99sWmT5rtPJDQJeKQcsMkR3BMgv9xslC8YE33ZOB
	 0iso4FoUQ+sbj2129BLkZj7eexg2Xk4pbAZxUHQkacIdsZMcWpYkmOI43Nfj2cKxjY
	 2+v16ycfKkwOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7AD49C54EBE
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 22:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167338868748.27882.7284631013636015662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdd5d85314d57dd83a486f18dac824d0f5846887f1a7bbed69b347f17c118179
Date: Tue, 10 Jan 2023 22:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673388687
