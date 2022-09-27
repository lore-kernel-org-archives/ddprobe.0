Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C16F3645
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 05:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ABD2C433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664256653;
	bh=p0Xq7WyTkcXzEGjULeXS3jfxYrWnNjy4wuc4SCHn0lY=;
	h=To:Subject:From:Date:From;
	b=c4zAewa/vtSyusANUycZfUA14KfTtgPF/pwOC6aeORSM4PkQpSJAZcT9nYqCrgmCI
	 KGSzZNWJekAeLuqXPUPmju2Np8xturJt3pUOO2D2VlWmI2YSMk3yd2KSxQA1qFKkM7
	 gRBPrGP+OCMS2+MBX3kuaj5HjCA+YmROjsGwaQsFtvjr9RX7U7RUfXxAj68kIaIdi9
	 nvpmSTVGkLqDPvnHYRRFqM2cft2z67mPc0/izyYgPQoxsbhbAuNF6hyxp6rQ5TJFll
	 4rffELQBLSkPRJVnP9iNUZZEdNpsD3j5exB+YG4P+VIQBqGwZGxBhB2ulpSC388U73
	 eTcoz308ZtESQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50904C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 05:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166425665332.9069.14272824207367731192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b13bf629a22128f7a25ad92eb910f06a675530766769bd98a927f685f2d228d5
Date: Tue, 27 Sep 2022 05:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664256653
