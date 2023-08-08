Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481F5107B0
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 12:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5C5EC433C7
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 12:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691497388;
	bh=m8vw4dZ0J85cPTdRptWNz77txWNsmozgrtpwqXFl/Yo=;
	h=To:Subject:From:Date:From;
	b=cs9y1CIA1FGl1cyDX4nKdu92dCrpZKILfAtpY32XZTh8paCwCBp2IZT5BglW1an0u
	 wU82mfDDf63S3C8McI0nPwkeH6oVL+GuhEJIm3n1NiXumhyMfkQxlFS9eKsRlcU6HL
	 j0Jn85j9SIC1+3hFjgDJFFQUwqnSu95IEdhEpi1CGX32pxbtQS5de4koaoL1X6yk1g
	 8ydjkvpvwWt0LYe6f+fdKHA+lw+8XzOM83BAbyYNf0TnbMCTN76JTeNUws8lsiNOes
	 c/2HqYI8TM7emvRrRUw1Bz9Cij9yI8WDEVxBtwEwpMlCZzCfdy0tfVcFCGmgC7lZNe
	 zrD1cFwlkH3nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9542C001B0
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 12:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169149738868.13931.8348677229503173347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b4716ef6cf3c1151af4899e8b449a6add9135fa93ba3dc72dd8e8aa597d2789
Date: Tue, 08 Aug 2023 12:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691497388
