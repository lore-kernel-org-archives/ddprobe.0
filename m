Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DF11772A
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 23:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E85BAC433EF
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 23:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684798385;
	bh=ApIUHbqtQP+B50Ig6aurgbLxzYn/vKd3xqcqdPsFQQs=;
	h=To:Subject:From:Date:From;
	b=BlcK9Lj12cgyS/iPuqVo9Mxmr/LbwD9w7x+XHwUXsObwj0U14smV0r5D1JhqOLe7d
	 ZduO7I3EyP+w2swe0NNNfMdkeJAqjvWP9uLZmt2KqJXVeb8igldrmXtEUpQnZYrc7u
	 nj6ZQ6Fn++YepCvsy0zrlMlCePxNk3rCaDyPzotzOkGCTk70ba9Lw4WjUp9xgM986H
	 aKLLrvlAqv9aeN+Xd9f5wCgStdx2sgOMe1UhToOo9KuWnhxR2nqs1/15E/AsHVmoSw
	 nC+6CUs9/LAElRfx5JueykeDSWn304AQxF3qpHFXtQWLUg/0FCWKsBfwCauC7HPQy5
	 N6NhNdO/NURmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7859C7EE29
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 23:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168479838580.19462.4376594121033086814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c699ea220cf91223b8dd4bf971127261793bba030e2e152d6c60499d52409c04
Date: Mon, 22 May 2023 23:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684798385
