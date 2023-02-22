Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BFC1C17
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 05:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE210C433EF
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 05:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677042665;
	bh=ZtxpwdFFkfI9LRgd1AldNCqDAyvkqPx+KFCb44XV17Y=;
	h=To:Subject:From:Date:From;
	b=urDiJ1ODbwpoeWUg8nOZsDeMBk0xgpYpWjEqJlCwvRWfhTvo1MCTW1RL/tvKg7oy0
	 9ynf2XaoFoM6/oMy54GYJFiYpWUZNVX6KvRHfUH/p/xRWWK2xQ4s1W69dc4Dh62cnX
	 tu+UYPs/b4S+2ud/peaxe5JLTT/tMnVZZyoycPSAOB6cJu88n4lJPnnRR7ntdHry07
	 IDIkzcGrzS0Ob0k3IMlUDvcV7dfX5LGgLTq2Jb0h3H15qfmvZkv3DFP9ZijYq/9Lsj
	 giKk1KW/ycf8Iu8V4rBQLuI8CN/O2YA0/8IC1b4S3zn+rqgm0saTpzuk/EFORK9GFs
	 lz/qv7J7S1nkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B72C1C64EC4
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 05:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167704266574.18461.6868981954415975767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c957a19ec85d3b00ffa337f954f6349b65fef225da0ee7d5860d6783e57f5b86
Date: Wed, 22 Feb 2023 05:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677042665
