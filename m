Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2EAE360
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 00:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 15241C433C8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 00:17:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686788229;
	bh=/ddUNExLryVSxYwek0QwGSqt9ANxreiLsUVyGJH09Jg=;
	h=To:Subject:From:Date:From;
	b=mdP2pA6KexkMMIdewjTMbSLGQDUof2dvJ4YF2SUo14K+J65/W8dipMVainJMsRzI2
	 HWUXvfg1ayZMEx1e7xtaIwwqS3oseQoK3lkrNnr0WS5Onc6aKU4KG/1kTLYlx4jcZw
	 /TkCnrfD7xLRoXk8+e0hx3aS99KTGpEQMrUZdcR1mPrFCETByNUIirkGKh32zcwFCi
	 Hlm8AjreTjifZ6EB9PQeAQFYe6bY0JFNgo6yCaL7TB1iOtBmyqlL1N+WbEXyio/X1q
	 B2Ih8NZRNQuZJK5ygnnYpSL5NmkPKhxnUGZsViRX5iZEHRpxfuT1m9cuDlQTj6oZ87
	 g8VbxynpMz3IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9559EB64D8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 00:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168678822890.26810.12293438870395755958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ebce4c3a01cb672d6d715c9bb724b52199b0ba1fad3c7033951a26c4af452f9
Date: Thu, 15 Jun 2023 00:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686788228
