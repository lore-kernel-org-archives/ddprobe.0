Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69C711FA3
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 12:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1A1B5C433EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 12:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678622826;
	bh=EjTwVs+LZYBxcl3nLMiZHebD7GgARPaso5diyIKwUTM=;
	h=To:Subject:From:Date:From;
	b=mtvJ8PZ4Q0edO+AfM3TR4sdz/rQoneEWI1+WLGpIZDLO5OGQeaHTgPcuz2U3p5Nn7
	 2ZFLS1u5g6t6gqJyR2uV5AO2HuhXEv/LYuF7M5pNs5Z8fC4g43VLA+sOXIOxAI78FM
	 wrZqte/VURSvK7xsbchmXdbQWQhz7Pqxq61a73FLmI6ZZ+3lMb7tyh4KYqYOnj3EKI
	 9yWbwY8JOvtZpoDX7pYfFi2GeCJfOpJtW5W3e36b8OL0pH8wOXrblU5m2orEn1qvt0
	 z2mVvrTvfKgKkrR0gIyPbDhHxoasq8EfrI09FQwH0iOeWN8wMpMRVaBguGdVHF9Tna
	 xg58m3UGhnSBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9D09C6FA99
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 12:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167862282593.24483.7861252241347097531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b0a9f51518b9694749e7d12fc9280758daffbc7a16c89d8bc3739a66dcce295
Date: Sun, 12 Mar 2023 12:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678622825
