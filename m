Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0C55A28
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 01:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7487FC433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 01:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669857054;
	bh=TBeRfJ7iUH+NiR18JpfpO6TwOYh4/PnC0d4AWQfQ4Z4=;
	h=To:Subject:From:Date:From;
	b=WL+yR+F/YaRxeqxl+uz4bv3BhTqCPZuCMbG66KfYrAbqiYyEDe4tjgKB+W9woXtDX
	 J4UeoUT9lh6sAmqkfqUg1BOvaK15ud/k1nTAa7mWo0UHJLzFB6q4BQ0n5FOOM3ZZFd
	 E1aKcLnfzX3ElQcob19WxahPgjRzhjLML/qXm8gjeqdvSiRQGdWO73uy4/w8qvWUUc
	 z8uHFGo+LdSy+p1KyQ+2Ts8r5lgKx7oJC1a99stRCSHPEcqW9xfqGEEOyGcJchYqtZ
	 cBWLjA4Gysfwb8LFJt3DOxFu1KJZEv3zoxJ3E2S0i6gNMhGFoooKYzwTFuZDYl0+ap
	 UG1clgXWJbV5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 588E4C4321E
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 01:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166985705435.12466.6964262154807202901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f50a3f52d2e871cc0f625604c0564cd9b810adb8a97007d90305577bd0f73f2
Date: Thu, 01 Dec 2022 01:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669857054
