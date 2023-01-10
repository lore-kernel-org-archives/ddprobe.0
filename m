Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9F97B436
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 22:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82914C433F0
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 22:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673390487;
	bh=7OhCM4Czt0MzHFpbIL5yDNBlPsNvEKB/oap6SVmgyfQ=;
	h=To:Subject:From:Date:From;
	b=f5GiVKe50JmtIzPUCAbs7Dx/EKvRb7OJ6UMIRH1R/dtFFQVy+KhUHu06bORXqoTGL
	 2s6tcHeKWJP5c7billIk4NHstt8zoOfbwYWbjiMF4UzYt5mqCMNbjB2j/tFyurW0Z4
	 JHGYOXQkbrC2fUaQMo2E6ZA/0yrNxYJqZXt9gw7Usk2Elincl97UwIou7AMnc1u++k
	 hLFEdRUc7SAf1ESJqzLIQnArv++vIv6A6AFCQmB7KMqdyq+cW7kALljRE9WBVW2rpQ
	 u2Se9KM0RfHusIy3MK3mdKMIuYc2dsnO4Fr9gVaEUoq10clntLyvbCp5vS6O8XsWb2
	 LuX+QObFufD2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 671F4C54EBC
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 22:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167339048741.28434.15843412844326376182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5c19e1893765439bdfdb116566aee97f3f42681f0d7046ca5ead6fdcdbc43b6
Date: Tue, 10 Jan 2023 22:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673390487
