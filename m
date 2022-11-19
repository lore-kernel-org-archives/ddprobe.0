Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D520A17E
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 01:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D78FC433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 01:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668822654;
	bh=aFlCqHByWe9RS5xfAgjZ3dZFScJNQLVZlUjW6fYT23c=;
	h=To:Subject:From:Date:From;
	b=W5zL9KYt1PJ2ReYdX3IQ2S0zfbe/H+isq0kOxmVZkan1cZqYPEqTzKsgfTRzFFRn3
	 CbZUsXl3DVqGrguw5N3yhbIxcGHLA+P8fxdE6PJEGWJs1pUk7AGu/g6D/FYMqJO2FZ
	 OEuRieYjNWS3D0Y22swvPnwACaY4BopZ4Nb6yfdHhd+QsAWnW+wgmuhcQmCIS14t5f
	 VKfKSBP07lyFVf9yLUV7bRRYcisuSnkXxK9AQ5AiRkUnttUzIERpjHgOFQvVjbQOBW
	 f3+V62HfO9kkljr6i6j1EQ7VqNK9aaS16AFnqKwCDT1xzukGU7CpkcNdgZj2eHrAph
	 cj8P2HrDS6PrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65F49C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 01:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166882265440.21376.17239253739540804615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6fcbad9290d0fe6ddc95b70346003ce56f344eecdc8fd510a0966472cb5bb62
Date: Sat, 19 Nov 2022 01:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668822654
