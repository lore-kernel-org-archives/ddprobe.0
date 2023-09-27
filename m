Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA636FA2
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 15:26:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D520BC433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 15:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695828368;
	bh=h/JNeitoUwYJVK0GY0ztX7fVQbkIXfga10csYZsiY7E=;
	h=To:Subject:From:Date:From;
	b=JNzx656YtrItqCPMvYharppL6gdNlC6zSGBCfiEMON0wLLEAhbWL8mTXpqb3KOM1T
	 GOzUS53akhNQXYKiyWdlhDdvw8bpHJKWo6QApW70mOnx7jc8aF4slmGROvagH91GUj
	 D50fEjQqE+YNzPMMM5VclcdYjDpjm31BuxY0Ss0lR0WZOjsPXXg/mn4czrYyTFPvNy
	 +C9lInfPL+KmOUSkqc/BcLNrbLkLUgLkQKmrIBPCBU4v7Hcdpe3lbyAP8asDSVQR/M
	 UBb1LlMFUvH89glGO53BOXx94rYTImEsbQVOpp4NfHDe+Qs1EEJ8dZDEhVxEBrJTGM
	 yV1P2fGlqjCDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B334AE82CA5
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 15:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169582836872.8880.10825638030210370568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a0f484411cd6657419de3581fae23f337b2967220308a261e5a4029ee329e92
Date: Wed, 27 Sep 2023 15:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695828368
