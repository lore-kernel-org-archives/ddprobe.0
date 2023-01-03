Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8757F
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 01:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90EE8C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 01:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672710087;
	bh=R6FfbyoMY1cZXfYpKhKCdDLMNt5M7iK5vzWjT5WW/9w=;
	h=To:Subject:From:Date:From;
	b=S1mcu2uCwWkugUXweNuWmRK78qo3MVfyTpE8isc4O0FklQRfCfT+ZZK+wlJnKHhod
	 qBc2da2R1jZ9OO8Gd/ROb5rMiojoP/TJ8QJ5598rEfFYka7Dq4O1xNH7nK8BTlKHb0
	 sIv0Kmj0A6BpO3A/AHgBdcvTUclRSdIiWfNAmmvlSAWm1tgR28Xd0TKGiGCz6x/u37
	 8pQbVo1UIxg85DkSm5eGgIuW7xkoDgWkhfTqCwVUDxG1pIB6CgnK1dtapn1iU5oQq/
	 M58j3Fo/SEHLLfcFa257ifGPTAeEUzh1onpWoRkQbZdTfvSa5TSiO6ErvwSjk3B4JX
	 CXgtHcEh6JXSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EB1FC3DA7A
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 01:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167271008743.21231.13513466341268195390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39f9ab5d566137e433421d65f6768b14887d003d04bbe270dec3b129c258ce9b
Date: Tue, 03 Jan 2023 01:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672710087
