Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0E897B
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 02:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F623C433EF
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 02:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671072687;
	bh=eKk5KwRxr3vrG1WTRvQaunugo0jMVqZU5a4FWjLmjFo=;
	h=To:Subject:From:Date:From;
	b=tbH0oW23hRQkl+1t0Q2AJ3GyeiUTqKifORX5GkoeI0Buy3w7gfpbFLlaoEz3dBT0o
	 jAGncXzRCZO+Rf2+PHmiH2eOKJDzZnUk0JA5C5himPLzuZQpGm8QHSlMfgqTLsjMKN
	 1bhh/nTOSC4WDY5Cq6J35w13plIs2H9MwQCqQyrfadinVcxdeNpf94kOE/j7JdVvIT
	 IOjh1zCQbc6eP7Bwv6pL/5dqKKmEbO5WrE1DCXqjvOSn5R6dVopBSzbASmPBDLZLAc
	 D/jZ7CU6v2MPeJ7OPRKwPrJwwUADObtATiunXEtq5KfyaPsceUXUDjrjdJUuGKqwNy
	 Vw95a2i7xutxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60A2FC4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 02:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167107268737.29525.5838992519831554778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ad00f14446b22c52cd1291dcb91eadf4dbd7342543b4912283d0c41a1efda10
Date: Thu, 15 Dec 2022 02:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671072687
