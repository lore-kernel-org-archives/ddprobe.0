Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66B1BBE6A
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 20:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C17C5C433C8
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 20:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693860848;
	bh=A+NsC69FbjqxK4DT2QBz0wCpRuN/0e+up7ebSTdWyUw=;
	h=To:Subject:From:Date:From;
	b=g43ivl1qo13W+C07MTVgjcyubgczaMGjqHF58G/mFjmpQmYgKLpuP4j9VRTwteXLO
	 s6xjQlBmg/D6xu9vTUxXgs/mGTSW7hVci1NOYKuNb9HZzsjn96oZ18iXrSIE4roH/K
	 3/GXnokRkagD7pzuZRGYRIfxxF65vyzzwL/WPpJ8Ers+lrJZZ1oBCDC4DvNnDB2Sjm
	 fZ/Q+g4LCicsS2OmEWJC+aiHGuaxFXrcptsYXtQhMzTpr/d0xmtxnN6beqmXIcrLXT
	 uhltdg2ZksUuQULeZ4X4CLy779aB8z307GshNuW2+ofJXPsThRdQq1zC9mloO5UpMQ
	 LceIEj/LKr6vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7239C83F33
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 20:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169386084867.30068.11421593266615590734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d332148980deccbbd80c3a6d832d982852b805858ff332536764011402ca507b
Date: Mon, 04 Sep 2023 20:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693860848
