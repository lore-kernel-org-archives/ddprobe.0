Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC5523DA
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 15:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D70C1C433EF
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 15:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681484585;
	bh=+G/7xXNMRxRkyDrnX5CcAL87ONKCPObaiMApngLAnig=;
	h=To:Subject:From:Date:From;
	b=MAHG4QEkQpi14Nz6MBkKRrTlAR588IaKA/pfrxkMrbrSLzuKcaum2W3GiAYJ90AiG
	 HmqxoTeTdNkvzIQiX635M4zfvEy00VSB+J65AAlRYMmSot2KskwTB1ZoFDq+qx0wPk
	 p1iNeguB0TdX+G++SIwSEao0cV6YOhl51YNgR3TiWQMQdsgnaumiwYnMHDjuFCyK1N
	 Sdt5q+UPzqh6paDHkz+LerOPzGwfavoGDCUFTjZU15aCRGFYNfC7xF7KZVDYaTiZc+
	 s6MJ5EPGZF4K25CVkxcdufWG0WmOoYCl0usSVC9QIGqJwChG02WNZqMDlD2W6/1Mw5
	 mYP0e93CImemA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9CCEC77B76
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 15:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168148458575.8548.14734402619795450262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aab4e23fedf58eae55d22156fc9c15a50e99eb7e6fec3ee5a437c88785c78a2e
Date: Fri, 14 Apr 2023 15:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681484585
