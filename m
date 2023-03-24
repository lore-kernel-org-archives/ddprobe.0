Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3AD20F5
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 04:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECECBC433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 04:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679633406;
	bh=7Ks3H11gDX543xnCeN+PHc62HX5O1PvgzarUlpq+Ag4=;
	h=To:Subject:From:Date:From;
	b=kO7BxvV91RIXKsTrW0v3csC0fpatLB1SYEqEcB6zHtdioWPWD8Ugxz6ENGaHUf9CV
	 DYnLrfFcIvfYG7gElSevSe4R3ldkSUdQSC8HA5kiiBic/T7jsnuw7iMy1gr9xLlrQF
	 pjaM3L8lrVy0nmjlTxaPF8TclxztPx0NW5Y8fMPAOHwpCeBRcmxzbe1yzAioKMWFG1
	 QPcb4J3RN2FCznpBpUK77spq3CEwQoWuXyO4aCMmptCI4x7fRJfS9ijzdr9vz31eLl
	 8CfaNrB7N04wBod83Ve4ykIrcEceb8CsXCs0ApRpnNronWf9oGNtwrWakUS7+E1jyR
	 rR0TOvYo1YcCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F3EC6FD1C
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 04:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167963340577.32546.12286301829950520879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a3c8e3628439db8e50e504c137f6450a4ec614e34b7e05e9b4af64cced4aa07
Date: Fri, 24 Mar 2023 04:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679633405
