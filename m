Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66DDAC153
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 11:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D11C433D2
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 11:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686135725;
	bh=KKHNCiGo9RLe7RhfXNAmzckqjyDUtCY5syC3ZEJceXg=;
	h=To:Subject:From:Date:From;
	b=GRYYfwgEpK15PD8F0ENVnQ/yUznySo4CAl2dBuFGQyOkD1pofP5bZRIjUEAH5c2kd
	 jvOsPjeUc124kHC9v3ShRgeSa9w/Q0ww0JdTrYuNkqA/k9XKXWlF0HyuNMJmfC8srZ
	 MsOwT5bgGLMbjdUZgZ2k6mCkX9KrdKB8QbwzUS7pq3pw2f1M4wZzsGYbAqtVB1nsDx
	 b4ktUobka1fMguTisNdDsj5HxEN7nX78jRPsE7ZFheCWqwdIKFGarZHt2006vu++MN
	 McBM01isHPcwMc8P/U5zh4JW5i46csUJUzoo94LmGNSS6Ep+nlSE8fKaucPS0kqP7y
	 ss6jTHbbYilNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDB8EC7EE23
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 11:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168613572576.21264.6153180704436026045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c883e015f53f7a73992f7b9c2d8231eceb6edc144d1006a9b32aa06a4d5e2c2
Date: Wed, 07 Jun 2023 11:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686135725
