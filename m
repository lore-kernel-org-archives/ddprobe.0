Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA55B7FD
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C9DCC433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662021653;
	bh=Q+T386LUnPPSQFvQ6T0o+Lt0RVG2nmCHKacGrPRwTAI=;
	h=To:Subject:From:Date:From;
	b=jifUqaWtjfpsXEhbo/DJVmp5aPExsarDqeVv1PBVduOM9ofdkjbOvihvWPpPpaA1/
	 rtQFwo4ti7+812FxGUuDgLZhvNZthPxZx4jGdjJSnNvT/5DdfhJ02xWprkfeHKE9cA
	 MVL0icI2Xhl8mkSuJxa7hEWK9j/Rd+JL2Mjaja4JiiOlEBjL+j5cgZtX4mzmIwR9FH
	 d/Rc13JXbAnPCgXZKouQBaRRwZnrW7Nd/iAmdllIZSXKoKa0Kl24TuRWsWKqK9h0lj
	 cjv7YFK6vXmjdd9dRG7HEU/PL/I7ThBpJDYfmdfv7LI+RfKU9oerLyjQhNqQDtfyHU
	 pIhdoj6uUZ0CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5539FECAAD8
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166202165334.4999.16920535701575065831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c35c43a3c606ac5a3a41968783130ed76ccf9158296a59e4a72e231a4ddf6ff
Date: Thu, 01 Sep 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662021653
