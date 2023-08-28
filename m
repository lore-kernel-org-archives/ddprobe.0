Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B72246AB
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 15:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC43CC433C7
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 15:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693236248;
	bh=QOHtgt8KR0GVBKDDY+UCRNUfuHvpRbJ7uLXbdS1dskc=;
	h=To:Subject:From:Date:From;
	b=T9V5mz0f8Ksjsp0rCtFQTwckPInSOgsUzDhePHAoPUuZRv6/H2IJG+QGOJRFUpxRS
	 EDpaWkP5cMOkCuwN1sRr8Ceo7uS7JDGPYuofwrrdMxyxq0OLs7iEanhpkqrA2VCisa
	 Jx8vUd+d3qd3r030PV9NBAZ7qq0jN2IHXsQnaQhDFVHfveCbiNSvqPaJM3Y6DomFWi
	 OuLhBfgTBJo2MqeOcnMCf24koGOSJdnDbWjWnPnIW7+d2tVxw2U58CVP4ltKznfzZQ
	 au2uY3CqX0xdvDXKvdBc6eTzDwwDRbDxXN8YDjYksY7fRh2fx0UarpUrOlJx8Z8yxm
	 Z+s88BuPZcacg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B098BC83F11
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 15:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169323624871.11133.8054963774946241971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ba27beabbef41ae1637ee605059fe5064415d67f3450494ed15e87679740c68
Date: Mon, 28 Aug 2023 15:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693236248
