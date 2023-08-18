Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE84168B7
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 09:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BECEFC433C8
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 09:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692350648;
	bh=kpqLoKkj+Z9vnWxTuoiio8r8lwBlIK/KLngEU01a5uQ=;
	h=To:Subject:From:Date:From;
	b=saKKcj/QM5G12SP023WJhh4+2ZtktvfZjC9dFNwB0xGGA7n0br0QD3Avpp944GDDy
	 vh+U5/s/dVyKzb6RIHqxE3/4W5L4eOT3/+QE4O7v6VrhD6179UriP7r4b+uq345FCF
	 SU6Qf6vzGGxgPb3CIWAdMrdpdBrdsSv92tjZ+d6AQyJ7/+GaKBwoioRWXhCittjTic
	 iGVzRFhAL/oW4/3/x6E+z8L2f4CjI6wzCb/TIhRuAPZCkh37lWoipnJdQH62XL9HjQ
	 jVO8XE/XNBZQCQ7JU1/HkvQ3iRcxYCxpO87Rh461bkqci3kuuq1JhN4v1Sjjp6BQCB
	 dWOopPXAH4Wsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A59ACC001DE
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 09:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169235064867.30054.4405780387629739307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34ded6cd2f8bdaae506b663e34cfc5b80d9d3ec0950dc60bc2b7db3999e9a977
Date: Fri, 18 Aug 2023 09:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692350648
