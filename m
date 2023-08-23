Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 632C2C139
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 16:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FD5C433C7
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 16:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692809648;
	bh=orhASqaD4+gJSoZpTGh6yR5aotGlpLPxKB9ycRxnGl8=;
	h=To:Subject:From:Date:From;
	b=EBdMz4uuSWyRMlW63Xz4OwFn7QHiFq4JnjKoYjfdhfxJjBbkbdIYPLAYd/x7yDYXy
	 CRnu+Qq6esWe8Fjgz2VyQLhv1Z1PqIKZnIqDD/fE4fUHyTgPsqUJJ7NQvLd0r2r5Gi
	 87EsPaSfAc/9z5SqLkHdCBNI9vdm1EiPC32rPccUBtIv/KhFNUztHCggAPSzInNYqH
	 ilrhjwfqJ72lqMNZQyqDVsCDhjUiwgmzs4Uw6J7c/l6qZKR8c+r0deTCxc+q5ZZqIE
	 jAhF3yQ7wm2Fz7WkZ0lE4whn6lYbNtpOmbdQS4ovXopIjRSsPBtP0n6kLnLUhlaGeL
	 cpRaFMUezIAaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5602C27C40
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 16:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169280964873.19178.18055142251101907250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 690e6337274ab5f6d8043f984e2462cd1bd9f3bd4585fd14f89a058bc8750787
Date: Wed, 23 Aug 2023 16:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692809648
