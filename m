Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAE554C91
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 21:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69CB0C433D7
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663277453;
	bh=R9ZfoW1iPmK3gmogvP9WRUFkxY5OnxxpyQdDmoq1NtI=;
	h=To:Subject:From:Date:From;
	b=D3xcvHg4Fi9DkNXdrlEwjsaqkAMwcmagnC1JdxqDyJY8qNb/gvqkK+hWXXVZND35K
	 hesEdgCm2HMnWM+X61bd22bewAuZLtgdOnHkVtS1zJluJjIqHd6TccgrnSRxpDnWho
	 ex7jziSwuvsvbQ243uq1dqLnP55QQxmqz/zsKgqQITkpiQCBAJsEOK7pxY9k8cBUJh
	 +AS7XctZ/9bmAEKueRs04cu3u+AeMCBTTYS+LLV4l94fqyfnEzNViTGsOrgVs+V72v
	 lhM5QgpVDq5xAzaIiI+8+BKi5SQ1DXrQxpMZ/rnlcUFLETGJj6YStRAnfJSXz1Bvbc
	 8bqTkyP3c52Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53C3DECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 21:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166327745333.27572.7012253186222721240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d96aeb41b00c5cf0daf650a31ea36b60c33b4bba4756e665621346e51357b575
Date: Thu, 15 Sep 2022 21:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663277453
