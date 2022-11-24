Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD97E15A0
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 00:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7260AC433C1
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 00:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669251054;
	bh=dLtXtRzkX/waTDTBbkAcXjn9P64GtsOktaERrTsRacs=;
	h=To:Subject:From:Date:From;
	b=ciyaepdAvoRtK8DQKB+oa/50brWO7jP13c3EWdL1tYFYQ1Tazzr2uScInCSVjOvHi
	 GBRoLZa033UYRxXPFEewj3ZPxPge22be+OoVkbaRhDngSvCAbOhO3JO/QbQHYC07Wh
	 cSJjku4g2bp89Ih+WkGkGx3/4Mb8QZ5MYnQQtex+blRg1xzG4i72JVcSMJCQw14caH
	 3ngh4lwacX4pegF5Fri+Wasxf+WMt7S+EFJipy0fRZehaVXcIglAK15zS1ZCI6ngGD
	 aWuw2hPeGvNBL7uLWOz/G9SMrydnTKGZBEIWQLTk4PKL/JPBzHPqyXCDhxZj/AmDLm
	 h6UATxvE52doA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59D58C433FE
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 00:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166925105435.28753.15866579311055041244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 770c962679b03130feae9a6bfce88fc3ec92515b48cb9a9750ea616376bbf143
Date: Thu, 24 Nov 2022 00:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669251054
