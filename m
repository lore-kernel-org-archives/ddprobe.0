Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4A6A1FCE
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 11:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67DB5C433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663759253;
	bh=+eeO6USr6kcw8CdLnaXVNWgEwKKtJUqkoe0PsdboA4Y=;
	h=To:Subject:From:Date:From;
	b=oVe+yEczW9nSjnbOU3+GByjbtwH/B6sPqo087/BqZTlmvProS5GauIGOLaE3Pf/7I
	 /1PqwdOkU7txyRgnfNH2opjUnOG5ojnZ01a1fY6+j1pi12B29pST3v17tvWnNvCm73
	 AHFWRzG79KUADkX2vaCYvpFVqB70L9IiE12hG0GX3O7Jfo+3IluFhCGgd9mAXVXNJs
	 yLii4Eg8zhnuEkzvJdA4Pw4T/U4cAPknNcp5NcUAdtwaIhvHEQKUL+rvpFgryHtuo3
	 IDzQspbwgbwhdXco7wr+bztHrfyCF00FSYDFKb/IdZzot1nBv2Awj2Ve9T2MJoEvyA
	 DYhaWKKWq5K7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52648C32771
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166375925333.26350.5887321214950036845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4f2523e1039900d6b212a745e0f07c5f592b300aaee23bb81b3c8a57cc9a2ad
Date: Wed, 21 Sep 2022 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663759253
