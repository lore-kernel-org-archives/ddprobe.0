Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DBD1C3C
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 04:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD17AC433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 04:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688705828;
	bh=bJAm1klu2AGTADKGxCmPzu9Uk1/r+ayyuEjRKfeEKDc=;
	h=To:Subject:From:Date:From;
	b=fGod5owj20FrlUtfGpM6h2Vh9NAfP3lQJ7uYwg/umyYkoiAL8NBTJP24J22FvgYxA
	 TqHLOSjDkF8T4mhDuQpC9FJYlwL4XBeMOnbQb2Yjoe7pXI5ddFlvqBc1W93nhIOOtB
	 r8syGWMEpnboegiHRRj8NtDfXhBdPnQanSfOAEkSouy1X1iNa7Z24bGN0PJmmAi7f7
	 Ji870KTa39tPRJunU/xAImnqRrXSaWlcZ98tQhMLvxYyFHCHmjzBsjk4fUQcB0PMK/
	 V2Xcy9OAqy8CYQUYz9q1h73o/oo1eOhiu7tZY+Qqop3oy6MplHi8f1JH/0Z7wyxuIJ
	 Vi0YArvlC1raA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4E55EB64DA
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 04:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168870582866.10505.6126678587350046029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ba27b63ba10f87bf5d4d5e4e4ac8a26c3877e1abbfbece715bcfb541d821050
Date: Fri, 07 Jul 2023 04:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688705828
