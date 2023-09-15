Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5657F3229
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 10:05:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7403C433C7
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 10:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694772308;
	bh=IYMNgtgyO8b+nQI2NB4+3hCB3K6D5mwNRKli5GDo4ew=;
	h=To:Subject:From:Date:From;
	b=hUBf5qGDaHmzxB6ER5CXo3i9viV0sgynwx8VWTbk51/drc8VLIMGJobW4ct+4ByrC
	 v8SaauiXvs6lxD9tV6+tfBmtglLodgKGErpyr+8FCq89WowUHgyE0mmuLfrp97IJCi
	 3ur+IQnKppPNV0wwC/RuromzL45KMXtentFxucCCR97/wsWSaHri333BqnB/CIsNF1
	 gSsHJEAhhhjoeNG5Jw9AKYPzku4BWpCKEd3K0T2AMP+ucE1q5ptIuEHyPYWhobwXNp
	 D69ZS8IQUN918lqbVy+Hb3aFgejefmT5+KvI0EHV+gfQN/Lt3m9lc2zGXFJoTlkP9z
	 yNGVNDlyhpZDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA338EE644C
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 10:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169477230868.26931.5306843941638736303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8edf59886573fa4b672a0b1d096527fbaab04dd9267851d2e28bd444197dae6
Date: Fri, 15 Sep 2023 10:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694772308
