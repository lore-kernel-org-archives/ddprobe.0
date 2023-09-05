Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D3BA53B7
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 08:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6CB4C433C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 08:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693902848;
	bh=XHFUWklb2tt1kcC91dcuAhjkmHAlHVT0Lo1odqF3bRY=;
	h=To:Subject:From:Date:From;
	b=f55zTW1nxzgGpLPFjB9/QtbAc7KlcT60mBCH8k3g5cdR82HkGIAyVpMKhebA5ZzJz
	 sT3ek7qb/0DvotaEo6fEJZHhZ1BYO1KNox1MYLe1LMy2UBHQJcMFneSnPJtUtZzwQ+
	 DUxq+YZ+dYcaZpGFRrNRYpxlQNUkpMNuHCkP6XRtthQEJS5hYBlOwWYYzcJ1j6SVGL
	 QLT/8kmjvRlFLEOCQAZG78W3j9Vu4o6eHF9Bn3Uv+xxRfFpo5KYHLcv9jdlMgUwVac
	 zQRaPnGzodEg5m+2sS6Vq+uVqCOzWA6l1JwU9uboRBCkni00MWWTvm5uR1OokSW2ZZ
	 KV2Qh7vvKdraw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE31CC83F33
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 08:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169390284870.9811.17066695704663138316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8bfc1fe92f952bcb8fc0a99ef216dccc757cf83df637e80397f25f5b8b52be6
Date: Tue, 05 Sep 2023 08:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693902848
