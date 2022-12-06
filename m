Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC32327738
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 19:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66039C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 19:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670354454;
	bh=zq9o1ctAevI2y405t+m/JdEQHzUB2T/Pa/VekkGTcDg=;
	h=To:Subject:From:Date:From;
	b=uM4or3K1P89bt3gRFwfVe/5J6mAVt6JydgYDpuA8sHNlpEsAWJO6IuRtSoDmAHTOb
	 Q+2ZXkcJcrSekXU5DXaJz7F/p7yWCc7/t1mKlmeUlkqrMEXX3YO5e22iwPKkYIDIkr
	 gKXbkhR8FrjcKOdUXg/Pd7VrahPDcGWnWB8hR/40IOqEgcMJtFv3uRzfRAlBdzVw1A
	 Gb8mPxRsLh19y8RLeXW30+ZqDvSmTCThQCaMOAOD1Q41kwmE6KzQgXwL7hJukzP2Dk
	 ElDqrNU0Ec244bBrBrP8M0hcobiGIsZZ2VtZBGrVZ8STGAW+3mK58XTClvH3JDP07/
	 rxvYtZdwkVNZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F4BDC352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 19:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167035445431.23522.3589820238707624568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f7e586581a7f1d9473c5c3a2d7dcd2a9e7ebf0c009b5ecc8669ae13b56ae385
Date: Tue, 06 Dec 2022 19:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670354454
