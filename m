Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 731022F45
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 13:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 15F93C433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 13:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676036646;
	bh=DIPDjeQMYmDKTUdJ1OR2ZE+Li5kUztjzVUIARgBW/ro=;
	h=To:Subject:From:Date:From;
	b=YaMPk4BUqwpzzPh7/PHxhWfhgtTrNeV4i7T25iCNo7SCRDcH/FCcVUOF4YoFcGVW3
	 uYVV9Zxh0H6rPtBW+Q6IiUYj9LXyWwYE8ZZIors7TULxK65DqkvW3vP9JkYxwDcBbb
	 SsrxZEUS+esnX12ku34iWoHt6zbYBMHb8DlbxEngTFXvtimCTR2PlDJXoGKS6XhQX0
	 O/2FCCgVlt7m4EhHFKSJWhJ6BGKUyapwbAx5VwHieIurlvRkAnatEeeZDSnkSYrCdS
	 RAni0KIhKr6LqtpfP1GBjwdm+aTknxIqthKL2ShFxGBO4XKb7zFsrZT77UBUKjS2kT
	 6tmefwD5lLYbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC301C636CD
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 13:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167603664594.19147.18425484440096210525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fbc411336f28f3f2dfa832cf88ea04452e2219b2776261ffe3809ae9fc5f9bf
Date: Fri, 10 Feb 2023 13:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676036645
