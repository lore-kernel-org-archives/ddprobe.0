Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E31C517CD
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 03:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92C90C433D2
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 03:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674097887;
	bh=z4SMmXcUzIqfrkRZt7g4YPoUP4+ol6q9VXL0fTmiOac=;
	h=To:Subject:From:Date:From;
	b=DCgild+jO/sYUFMp5zRurayR6tOjPKhpp5N5yfH1/946+DsypgJFQISqAmD9ab6i5
	 wjMfA9inPDcb1hUPWnX0DGfgkV9cc/P297AVl4Rme1jYgHR8LzsiG69KyEWDnEX0jp
	 CjH8q4Dl7/c2OituErcicjoAqnI03+fqW+9mH08RfUstb+SgPjlGF+UuD+uOeSCdkX
	 fY4EDjpJTcaYOnnQxNHv7Me/deap1axlSX5fqzVeWeEolvgAaQYEZhQkDmo12r5hZ4
	 xH+0ElEiMYQRSm95Vk0eo1T1kGINvvGWtVHzFgrznYUcdYC73tMyd2VYwA4JE9V7A/
	 x8906dAv+6daA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76843C38142
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 03:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167409788747.13333.17413680781127064750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ebc6c86c199c080dcc632ace3bb6ec69be72722a2b00fca97603267a92ed329
Date: Thu, 19 Jan 2023 03:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674097887
