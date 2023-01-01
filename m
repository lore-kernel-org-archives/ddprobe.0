Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 067882F2C
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 16:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 845D6C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 16:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672588887;
	bh=tKWRT19ZvaSjZ3GsswXz99MfkoXOmJJTcKYlitgBMbQ=;
	h=To:Subject:From:Date:From;
	b=hw7EPO0lEAulB2tVhEq9wQo9GqzVzTJ2xi5dL3BYuxGzs1z9qM6yGSz0C0uMgdOUH
	 spGLJCCHPf/G+DzFmVuCsAMZqax28W9BQZqr5m2Af6/rQoami6U87oUXYi9I8qAFja
	 w0OWQEHhU578vZF8pybVnl+GZH5WFSZs6xeUo3mil+rxDbFRlBOw+xICNi2KhFhbJh
	 OyBPDBF04g+nj+55vSTnPSC3ZaXBtyewcvLwDoS0rArc5dOVL7RRcSabQ+2laaaVS0
	 qZbqLhtT23As4y6An9swuOPCstbF4mTBXt0b2ivTqNHmQydpDTs0IWfQc6cf3Hkj8k
	 KgxnLz597fh0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 675B3C4332F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 16:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167258888738.6666.3732074218822422825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 073dfd7791a63ae6427287f2bb781164129f1ef3fd490c91e5ab27f5e29a2ab6
Date: Sun, 01 Jan 2023 16:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672588887
