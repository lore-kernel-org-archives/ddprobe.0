Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3966217F6
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 04:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0118C433EF
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 04:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680324785;
	bh=hUMNsq3bjAbVMZE1ci5e5+m68WIoaV5+vx3vcbSCx1Y=;
	h=To:Subject:From:Date:From;
	b=NyeCSDNaOiCJRtSZPMQCWy4V+bVb7lGHmxWQZvTknTqWMg55ywinGpv9roKxqUyWt
	 CRUhRWFeZ+fg5vEOj31n+NSYLuyG+TkofadTEwmuyYnYDezYsOPFCqRzysw3ISAX5P
	 TWMh1z50PaGXi1/w5ikejgGbZsW8Nu0OcMSN1gAwK0nLlbr7nvL2sWiJHFaroQiDLQ
	 2/EcxRIcyOPAstAt7BXs+a7SCi7QEK1NUi9ufNHA71fJ9JKUlx2zdL2TDFqu8iPgaD
	 k2ijqZXPZrMBlpqaDx4PA0iLVZu0+7Q9e2L/8JiCMT9WdSfhvToJOLtu2KUlbyG2Lb
	 8LSi18KqUzGZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8E6AC76196
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 04:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168032478574.12220.11575541553997778192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e973f409015aa4f9e2998e4a3169a5e21c75ec33a9e45ad2cde1efc01b380f15
Date: Sat, 01 Apr 2023 04:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680324785
