Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A8C7EC
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 14:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA37FC4339B
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 14:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681569245;
	bh=t5ktQv6w5Uc2DVOuJ7/jTN1uEBVxs9jXReGw9ko1MW0=;
	h=To:Subject:From:Date:From;
	b=Z7HBVhPnNXCwZvAlrj8/1ZZV8ZJQFRmEa8Ws9aKVbwIKtsQWw32+rhXRII99BlR5s
	 0faCzl0pCpZUg+fDpqghWXcxlHwzclwNJDBuzzUE54Ve7TGKLqebj2sxILglkSFXP8
	 ab6kSEC0/6LffQMqgaDwOCbNiBpD11YkHW4/A3nt47sm9YFTiqqo6ihOVN7itBGZ64
	 CVrYeZ9w+RC7ReDLnC9X6jHjQqnTpfkOt+rRPu5+m4qTFyRm2bIm6ydRQxWLdiZZFD
	 Cu4ljwQMmgF2PErJH0aGxotzaf8QB8msBYnUE5tniLIWw5mupKKjWFmf9T7tJiIJa+
	 hcr94bEuez8Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC1C5C77B70
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 14:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168156924575.28264.9248634720353145383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e7bf8bbb412d7049d4dc6d0751f7a261aec27f586a157e2e87503968f11ff4d
Date: Sat, 15 Apr 2023 14:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681569245
