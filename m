Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EB532C63
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QPRy/4wk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CF31C433C8
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699466296;
	bh=yiWMQUbXdYoN/aVEeMt21LlOU3w6FWqwsI9CzKyjHFM=;
	h=To:Subject:From:Date:From;
	b=QPRy/4wkd9Q4nTRJGDlMwGJBftinnSekb7b5itGniDOeUHYOHBBE9GEWUfob+USYW
	 sEkN+vpNzyMU0uLzFVU5vtL6MMM5uyOV+8JsLLs90wpkRBaYIpCB4W7Qm3yDMpyRAv
	 JQrdyJevd3CGd1qDI9p5LIAGwAy9HZxTFLzSLKTNCLEBmhyqHLPIGrv4qrTCrMvZ5C
	 CpOY0Iyie/Nr2DGcws7asTlAcpBV8yOLr8jaVuPjAQO9oOkt8KveGaiOGyqEj/D5lm
	 zJgityefZFW1b+3ngI4UiKwHeeSxlxlXpxy0a+zDGh5HvjP1XJlHhJZMo7S330DzVR
	 7snVQjrAeHOig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62136C4167D
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169946629639.20541.9239065580806020452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e363e5b301c5b124c8bd4e1f74f2ae295c75d7e1653c849250a94ce41695575
Date: Wed, 08 Nov 2023 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699466296
