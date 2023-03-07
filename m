Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDF1386
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 23:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D404FC433EF
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 23:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678232405;
	bh=CZ14vDfQxbZVQvyOuq0UXVKb+Gp5SBLmOXOnIdkVVRs=;
	h=To:Subject:From:Date:From;
	b=XiS5Lg7g329HfHg+blGhXIEPhUzCRDyHPtLdtxXjI+Q+7XSRAGRUDcXMa5nNDofMk
	 oyCvmspp2VlcqIp/sFyumMFkldl9yG1TjAi8KBUFegy+wzBDjNRi5tvsz2vehd6y10
	 vxJtIfRum01g7Z/voELFJdfkj58W+iedv7tk5E+YFYrhnp09FZXDC3BjWDHfy4gtFP
	 zg1ZftDwkW/7E54BtnFoi1O47eWkagTaZdOxUywzsioYgs7sEz5ac9vXiby9ZXbpMa
	 tFI/OlH1rTPtmSQO4h4+dRzUejrJNlFqZLdAAUfAYegF275GTAcLbFYMlYnNJrarqU
	 kcnMGxO20ipLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6D45C678D5
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 23:40:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167823240573.21083.11974755262973346251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67d2cefdf43e1b2f9486446c5c86fd517cdfdca5ac1296c5bd7e464dc5aada21
Date: Tue, 07 Mar 2023 23:40:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678232405
