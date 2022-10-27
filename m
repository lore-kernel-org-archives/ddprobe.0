Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA8992568
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 15:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F68BC433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 15:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666884054;
	bh=PoCeFYlMZKbkqMM/Lqqq1LL28javFYvL9Zn8733JXyE=;
	h=To:Subject:From:Date:From;
	b=Ric0ztsYdcJ+BELzYSGJHgHJL885Z+RLJLfOiUfLSixh6BrzfNZ9pLKGmKcdvuFV7
	 ZN+JLefOI/JOkma3x1s6izu1bL0A9H/OG9xOMFMWKKF+5cMjAPLtpvHxMxBcGAQc7G
	 ZzS7HSQZT8Uek+0IvOfIVlr4J+mBDhIrOZrk6qR08nD730FUG5gMa5gl1SkNbCgNIF
	 otg1Dkzc+BgpAp5XjhPNFdAeCvSYkOaJkrWHOqFG2mS5GI/tk8W8A5WPSFhbcldnsf
	 I4oZ2FGKBbmVlWBj8YnI4bAy3anPPWJVE6vVhogkN4wT2HuryWwWb5YcWjXvxbqxEp
	 b0zdPd6NN+Y4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55B15FA3740
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 15:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166688405433.9115.2129363882098623531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a65f8a68a50dccb5c088f67cf06d1e9c72a3e8e80fd9fe6503cb7657fe7b1ae9
Date: Thu, 27 Oct 2022 15:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666884054
