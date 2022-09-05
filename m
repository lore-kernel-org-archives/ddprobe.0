Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDA557E
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 02:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68F32C433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662346253;
	bh=8q96RPzdneJas2EAE/wMpBSuDVycyzS7zfn6btt/sdA=;
	h=To:Subject:From:Date:From;
	b=hc/pRQOxU1R39aAXglq1BQHQCm+mEI2v0dNK3fJqhuR8YE4mj0VdfYljB4U7vt38o
	 tOcK/4DUFXb/tCiSMa88C1Zwq+Oe/Iatdk6T2M9ExHl+tL86WzHa91UNXp1BIAK9oj
	 ChF0CVP4rIuBn4sI5LFNEUqGo4EPcLPVwtdlMktsa2UAp9vQF9iFnBJz3yTjAP1stI
	 C3hhQsaGSGuRoeWB5aUP7/tashK+TwVtAVcKoyaJY+IQPBxvOFKlEOJvGXO3sP6ZVP
	 M0PJIMIN7ieOAClS/yCqMRoky1VGiI6M0MtYol9uJMOjSkFrRBGPVjagM2ppRGuCNr
	 095FulQFFkeKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5240AC6FA82
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 02:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166234625332.3120.17307478473623014243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dce1ecbab26f1336df13e8941e3d81f50eeff96d451c3238465c65c1a9fd63b
Date: Mon, 05 Sep 2022 02:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662346253
