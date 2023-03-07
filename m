Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF43AD49
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 15:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 22288C433EF
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 15:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678203006;
	bh=6LA3yNWYGqyVbeNyS/uC/wwWiB4yjKYh+Ut+bpwuSp0=;
	h=To:Subject:From:Date:From;
	b=d4l57s/VoQVIpEpf+9KRFpfdkoT62MVkfF9eWX8U2m2U+tTryyUTDbAZweTOTMF1t
	 1sOYsc58/TTJknzmv5BvTNnASN7yU5+Wcfux2v1W5XC1gqPQp2Rq8sgRI03u62rGkO
	 0Udithqi4R1rQ34AbdYSYxxFSMkKbyoTuP9Guo/Kchj0u6tKeVb+aYyoZG7vTQh82g
	 m36M2DVa1+73sagQD7QpTVx7pn87Y94P2MWOTLT9Li87BEhywGByVDXxYOKAohTGzA
	 7GYfKGvbosZP5fjZrcaPmgST4fKN+N39XGCEOH+wJ1U3xiAvAjn0bo3qEwSJ7i0mVG
	 7ac+SMQmo291A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ECE80C678D5
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 15:30:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167820300595.21361.12700378091963683258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d633da1cec0e1ee7a9489573ce71d153b66b62f24a0987bca413d6d6722b898
Date: Tue, 07 Mar 2023 15:30:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678203005
