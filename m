Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55C505CA1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 13:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1EEFC433D2
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 13:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674912786;
	bh=RET/N0SoBOc8J3Gk8qxefyDLD5DicTxLSpnpfRqTJwI=;
	h=To:Subject:From:Date:From;
	b=YWWE/+hkGUFcSSQn3zLgpIlo6JgC+bf4oCaqkKEtN3FfwKORSF7aOCYknQFxoywCg
	 S47D55JhurUAs5rRVyGy4ZEr3DmIo2WVP9C6LSD3OpL8a2fthN6THCl2EsCBuBOEos
	 UTDUuLJ+mgJLcqU3LdFb22Qx8PpA/1l1og8eKgTijgkLMAd41ECAsdtANlPjqZy/vx
	 vYdnNrUTWzDQlXAKSSn9QkGpFwrpJwmdiaiYtuhyAVXufETFdi+Z3+Iu2jx5j9cQC6
	 xESmubqYRfYyqANzVzQT0LJQtN1rq8MQArNtKoq8vs8LfvJrWAxv0vcM6KdrZH9dtQ
	 nyu+KWlYOJnqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8BA2C38142
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 13:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167491278587.19883.4292794367055782972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8caa2c9491d12af52abc852d7ce21a6aa008e5d7c909efffad201e7952483d23
Date: Sat, 28 Jan 2023 13:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674912785
