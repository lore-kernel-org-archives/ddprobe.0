Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC4F029AD
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 21:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 793DEC433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 21:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661634052;
	bh=3tfOyYvaCydHJyX6P1JyUKkOhZQijqErPyMqo107yww=;
	h=To:Subject:From:Date:From;
	b=Er7BmaLh2gn9zyDlrUyxxallcBNeANm/5CYSpVPJj3p6CJDGj7o3UtXXjJZIN1PPz
	 jkwKM7sa4ltFBhNEiOX47ptRaI4yfs1S3GIwwOQC1plcahzSe1AHW6HrNLkCcmAlo5
	 tfETnN3cD3+kYc202bfgb8TsZDdG9HP4N/PO+OztCT9vYl7NgBWQXWfKozHPTyDpWZ
	 h7Oqjn7RNw8B/vVwtCdFR0/SqlMVBNaAwv4S1hTkBHB5pYxvcJammFdYaH3gj/vgeL
	 bJIq74Ay5GIDNBM9ON0FSWy4WO4pXEiXK9gmAFnUiB5Esf4eT1mUhuhQEJMYllS5qV
	 lsiCy88My3iBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E878ECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 21:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166163405237.2890.6952260122755238608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d1a67686b131b717c1490a212f2a659c9f7f2fea36cd82e9bbbb13a2af35183
Date: Sat, 27 Aug 2022 21:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661634052
