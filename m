Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2A892F56
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 15:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77D64C433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665328253;
	bh=ey8C/KjlCop0RPHNDCSO5RsoXAw2od3WNP9kktekrtc=;
	h=To:Subject:From:Date:From;
	b=Le/P/Kjh8wchpLCgTIN3kcwi2DrD2Y+B3O+KEks/W4yBvyPk50uTGTPmgh6uR2ytK
	 KHvkHPn0n2UkmI0CZUQf6xL6mUaGCWnwiTx4h8vge8WB5F+gH68NoXaVwrP251Qn7u
	 tzpPW77G3mdie+q0Tu6EhXcJOLTf6hcVF6bfmVsUG/ESEsvoGq8OewdzSbcbo00a7+
	 9zf3vKrENq+jyCFH0uImtxDqSbo+lzcI+hoGLaq5jxYs7JRLTW0WXWtNKrwseAJpD0
	 YCwPsUnUTMs2FCBVQXLe1yEH6uek7VrqpyciiTotHVEgHMZngM0r9bxopN31O7zhl6
	 dt2xjmc0yfWDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55BF6C433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 15:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166532825331.5475.1739547796701131307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a46a8bb7cec792c4d4c2182f8572bcf75ca7c17f397c8c446a3c2a46779b979
Date: Sun, 09 Oct 2022 15:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665328253
