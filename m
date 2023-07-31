Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC8C18AE5
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 12:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD0CC433C8
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 12:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690806728;
	bh=zu4jH7P9gKTmxsgPkTbnH4tSXeetnWLVl31+W+4jMX4=;
	h=To:Subject:From:Date:From;
	b=H0XydxLFvfrbdaFS0e0AXy1bGNT+fWMbfJkzo2KOkweMXiR284sxeYY3n+Ng720iF
	 9TsRMEvJZitAdPw6k8aA+LOeQDNDkqeOxTp+MKvJbK5Lh+QY6/k8nNyXQ9JaKuOoBR
	 o0WQNyI30P6YI+0L/qBjOSHYxEellcQ/KPixptxoxLAqNLdE9UJzxyKmzR4xuycgwN
	 q27KbC6sdWnMFT3YcJQosLOxaXytwnghjSlMptzXy8YvdzQ/az2zyCBY3bscFXkUrH
	 LYz+dQ1gQ/Enli6pBwYkw9Ybp1dBRmbHAUWvHERTG6reFwUMEJ6GcSvnsAzJZYxF3F
	 IyRj9PF8xaSWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E20C001DE
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 12:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169080672871.16506.9079797556805675827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e95968df7281ac49c1f5b21c773c0300f64ff2f48b29d77ce72870bb96cc8827
Date: Mon, 31 Jul 2023 12:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690806728
