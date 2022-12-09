Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3B15A3F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 09:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86DFFC433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 09:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670577087;
	bh=vjqMW8BChet2HJgBxwfva4uuMVeqi4VYGxnFks4+7u0=;
	h=To:Subject:From:Date:From;
	b=VkR0wnIx/tJC5Y0irbuE1Sn7oxkwWD4LGulY4mX4MnLexhOShbE96Ejg/VZwNAHd7
	 9k5El8kRCm3ejJGLGdrz0L1XMwJerEHs3jZm2k6JOirve6LFclIseI6/4IEGWDLVXD
	 zW99wT8UpjOutQgSAgPBzs2YpdUR5wlEIaI0PS+hIC+6cWdyiFO4cO247NUqos+yyF
	 qcVQOLtepSB4W+wXpexLxYCA191GCFUa9KKl17b3THoxYfBIGfkh15JDLhckvr6aZc
	 L65BJlmTmWRG1pRepUQwgVOYrh4eC48z8ZPwMso3pFDHDfyfCs3nJUoUkqbMeClKkA
	 9fWrZj4Jxd/EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 694A8C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 09:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167057708741.11374.1262745107776731622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 241598406977e0c006128f2559153d8f6961c099788ee2325cb86147f39d1a4b
Date: Fri, 09 Dec 2022 09:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670577087
