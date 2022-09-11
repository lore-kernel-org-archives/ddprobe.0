Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C26CA7F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72AC9C433C1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662858653;
	bh=xaEInSEmWRcayyQlY77M0OyNqH4zxCOTlruXtJVXVj0=;
	h=To:Subject:From:Date:From;
	b=Z7HX9qSVxWINszukdBSsgFg8DdBin++PF+jxmjXXmIB5I39QiiZ1w7swJQ+WEnoWV
	 Pu2JkdTdLW3oQWzLi/3zqpcvT9j8j9j1O2ECPclGacHazJU64r+vKwdgwmTMg9kBu5
	 QB/OW3wlaXYk/iZCjSMCfG1HN7DBoxcy7+TfLLgfPws+aW8WHx/39N9O1ioxHGYp6M
	 JOnyy7/nnslBb6nqde/kjMsvOz97KzsC6FMdDmK0nNtpMyhx0BsuUnm+vpEQvD+UKp
	 d0tx88L6wCGUXc1rmkZwvRtQ1CgLSWeb+C0FU+HhePKkGv57DDRbAbJ9L0MghYcy//
	 xcP60t5a/bGuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54A88C6FA82
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166285865333.10038.10849274648998304365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f69929b22bf662feabd9f4f624e86b599bacdeeb4c868dd0b14dcb7266f3ba4
Date: Sun, 11 Sep 2022 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662858653
