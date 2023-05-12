Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475DE7F0
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 11:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2C5AC433EF
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 11:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683891905;
	bh=IUDV6zj9syxcRsLpuamzV6qZ7btN+PiwJmyW11JJofg=;
	h=To:Subject:From:Date:From;
	b=fSmYSayLu9vJvGmnpp7eSRLHiCCDdTurgqh/ldTrxp822LiIwFkyJhbp5m4A+ua2p
	 esGp4cvPrp6pKdWFiy+MjFSK3CyS9nkpF9Fkb2i/WdmMJR4STvxKnj+c9LOAdb6b7I
	 MqTZO3i3aDXbSX1CRqyzu+QbtfGxKHaXeT8ZRTGtD5jG+xrCn8qo96II7b+xclZvgl
	 Wva5zqq+xp9emQ+0odg9yyw5I/grB+Rgy0muvhiAlwI+AJpAsfpN5OCTrr+0D3jtHA
	 gFc7ZztC+LlXIY+liFd6LF+Cr2s6/jbmbL6fRxtbOEqEGW+6uuHR6Z/Uxj8YC8JVUA
	 /9hCdZkxUH59w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C387FC77B7C
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 11:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168389190579.8720.16075612177622858243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 287bcd4a98ccbe8526b9938004d5fb93b26b7aa736c0ef7764730060e174f3c3
Date: Fri, 12 May 2023 11:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683891905
