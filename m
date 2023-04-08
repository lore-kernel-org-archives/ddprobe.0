Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD891101
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 01:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE5D3C433EF
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 01:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680916266;
	bh=9q2l+O2i4aN64INEVFsbPgTJ4408b5pJRvAjtP1qT34=;
	h=To:Subject:From:Date:From;
	b=ATodFKfeyMGI9NYXwftPizxjhy673fsvaGbvWOP5rGdIUvZXhXG3Q3Ew9EgYrjnnO
	 WbCDTijXJewlTb2z8prJKZRNC7F13BjbkLtYzhb10QanNOkDJiE2ZbYKreG9SGgO52
	 b814eHf5vZom7Y9TrX9r6fwKGWQaI2HH3kyhlLd6J8VhJkC7794qB4B8ai27Oa6u+/
	 7zipTZEgyDRwuz/zUY2aLIZvEdagTz7NoCPYyzDqBqt1dyYZJRcp9lq/59JW6ySsaM
	 rLBKduQS/hzz8x+KFHxrHvUO4GjWdEdURFMfeaChs+/0zyS1Iyi/UEQEH1YoOM0q9M
	 X71EpHoDIez/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB813C77B61
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 01:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168091626582.17784.5103265256025168106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a9adfce2bf2c0c40ddee216ea9f93298522c05f3cec5f6009909bcccdcdf0d0
Date: Sat, 08 Apr 2023 01:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680916265
