Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B97D786EB
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 20:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72ED0C433D7
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662495653;
	bh=y+dH2pi5D2aegFqgLfiPXGvFNRW9xoorBo+ZLH7lM2E=;
	h=To:Subject:From:Date:From;
	b=nGgRpX1Af8NQtRZ58548GgzMX6Bjheh2FpDcCqxgXvLla06UBZ8qOG4IORy4J/UBs
	 qSoImcevg4m9OzF4mku2vZ7vGotv0uYeT323y7CtXdTfHKN4W3x5C5xOuDQ4o2KOtK
	 z9oOp6ZfkAHskSbfWgstIyU6FU64dQtM+OkdA0AhqOX4Zhtkw2yxaFL+QuUeGuJdVF
	 0hXjBhCSrKoa4uVh7xspSC1JtYzxN1dRwFprVJImcdS57w8TqacwIH4kbStGMos0R6
	 V6AWVoQL4l3Rwl7SAlNdMkf1eZUpReQQhHL7eLOmlh3YkZj4vF0wv9e8wedDBCqu5y
	 MrsTK3LxqnHdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C7CBECAAA1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 20:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166249565336.8982.14845961343052749381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55ab9495a1491e8ce6865451c987734d2505bf9957e4d5690d1e59a0e9ba3486
Date: Tue, 06 Sep 2022 20:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662495653
