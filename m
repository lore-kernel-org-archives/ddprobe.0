Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC907803
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 12:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8275EC433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 12:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672144287;
	bh=COSXCEeG2FKT/RgimJoyMfSYgkf2bb7qr8UjcE1tyNM=;
	h=To:Subject:From:Date:From;
	b=tfMwmvmoaksY/ilob9QVeb8ZBfnZQdaTNAfFF8rn99D7bWymwA1iNNOdvUJZ9M/LC
	 MTAi40QcbAcRSthEo6voOi6wxnwzzPb98ML1T1o94r2do+kz+c+7a09NdArDnEIOqn
	 zDQlCg9QbZwOURYwdo0vrlV7Zuw/eo4lQelWJKUeP+V1Ck85eidFPVk4iJh4PoUiRY
	 1BoGt40HBM01i24f/ThTZLyDUx4qgT41iIGSUqUNKh+0P2yAw4lOwLroCJcagoNenA
	 Za9EA6kxeOFilndoklkFu+yT+RLCYihG9sPLpAmXn9KQ8cWOqP6PEtsRk3RjC2J9eM
	 PJ8LAl4f3mGLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E26FC4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 12:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167214428737.17886.6712023391546217541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c1c02fa1bb3a71d210b7706320a2a3317b74d2d8a4bf76b5a9111a62c176967
Date: Tue, 27 Dec 2022 12:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672144287
