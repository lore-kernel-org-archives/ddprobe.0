Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B11017C9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 15:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B1EC433C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 15:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688312648;
	bh=z7POyXKxAFjMa0W5PbFhX66qkmGTXITUuD386q6BZEE=;
	h=To:Subject:From:Date:From;
	b=rS/joCKdw26tUFhtycqCQ/G3QCQSAKwGcxyJIKKGomgNQlwE1/lOEfl4oh7iTm4Qc
	 eeTOjm+4d8FY407lqRws21fC1oQOWmUhWPNELf3WesU3g/2AhxJC4gbFHNiKgcTWl8
	 azVxQJe6BAvVzexK96RTP1IoNBBIKeyYUFhIucuXcF04hVBOh4ql8ru8lR9fxmh2Eu
	 jL+zh3gUn7cNl1csHCwsKYud8OdhrQeJ+kWqJxofkzYCucUb7/5jREVpNEfh2WoBL5
	 aSbbgPwxjiKQdDTpi/WKGyKab8opzZbU8UbT0r37G20mnX6UhgDAsylLt6//WDrJmr
	 N6Dz0FsjDt7KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC29BEB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 15:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168831264867.13563.7854319906728177600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad5c6c730a44f5e8883e2876c5bc5bbd6057ad0b0ba6b03e3afb93f0a27ed1ac
Date: Sun, 02 Jul 2023 15:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688312648
