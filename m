Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4655A1102
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 06:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E671BC433D2
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 06:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674627785;
	bh=zDIGbrE7tTGcZ1H7WFZLSU99d4QSCPew/8ug//kRJYQ=;
	h=To:Subject:From:Date:From;
	b=ZM/dlNF8BfWSK1tOIw11JPgyCjqLZeRzrDZ2f8d5b3H6l860xoHZnWK3JuJO0zy2I
	 oYWdpC2kuPkzLNrRKFAjKKMRIaCjXBDZ3syl6+OytPCS2LTdWY+M6XJ29kZX1bg5NR
	 EcN+M7kNP3O8i/+YkjSCoCCXDq7coo77UhDHBNoZ2e6Lqzf95uj2Bk6CO7D0XGchHH
	 F3eMdJHYIUy882YtEMGu9L9//klXsnoE5J+iTd5BPpx7JaMYM0hE4XTi5ZvuBoSL9O
	 ctgD/Po1FLS8zBfbDG1r14e8bxO1DWWkvGjogiuQNRt/3z/aVBQR61G0eX7nuOnCy7
	 musii4Sl56Tqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C43E0C27C76
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 06:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167462778578.32002.16239388689802439919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 414e127ed21016f83470cfd708de5bfdb38951c2f26b2592914fc1447a322c15
Date: Wed, 25 Jan 2023 06:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674627785
