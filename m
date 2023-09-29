Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 668DE42C1C
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 20:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF975C433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 20:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696020368;
	bh=lldqni4flwEpaXYGsHP3vQdqIY4RyFc4AKt3FtnLCbY=;
	h=To:Subject:From:Date:From;
	b=GGUnjE55lh3HwnA/TazFrssDQl5mocoq8tGYaprIUtCCujYsekHFtIG5gtHGua440
	 odbdfUiJNSVxUzQ44PV7mhncZa8JWwbcWKmNB6fqDfFzFbigFSOOYvlrUF4TnSGNI2
	 vxnY8Dgtk9/oMW0VxH/uiroLmhNwK8vFhkHmva5o8JtOS2pq6PUgIqIaGwEDCq98RT
	 9CgDMRiWPRfgSOCt5WXddL3u85ClMFzACmeqX00i6j+dQiuPkkyQEoEq6YWrP+U6JE
	 6CNxWdZ7eHU9Ii/t3OB2WdoUsZoQbsVKK7dwg5bIG7+6m/2yq8lKjuu4EBTtHzpkd9
	 Bz56H/GGGPB4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD299CE7AF3
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 20:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169602036870.25316.3230531778307286609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 357cdd05145b19deb584c7e22e888eecd880086027fb15ae51f54694ac119747
Date: Fri, 29 Sep 2023 20:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696020368
