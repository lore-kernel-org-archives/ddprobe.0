Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C818D5A82
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 20:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F91FC433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662841253;
	bh=VfGxwl6BBti0rFbIgKZm0TS0fvjBIJZKFGDgcnnRK0Q=;
	h=To:Subject:From:Date:From;
	b=AClkbu+KwJQmDbRsITk096H3jR7KhJNcwEMGgdWFeKnsOBmY/u+7RRz4gH9LiU/Em
	 XDAIGCBgZwSyIZvo4ozHmgm5AAsViMfvegc4suPlMdghwq+32xtMFb2nDThcv/psYW
	 udWJLPj17wcZA/mLKu/VcbvwCWjYPOajvaXZhjCdQVgH/nphpaoIiE1uDorenf0mb6
	 1SbbO5WsDkuzRZrKzeRjVTqvczcYx81JURSQYGssecdf0pYCBoXb94pvyrKHT1bOni
	 nlIIlYhWppj4/+WjPxB6E0nfNYNny/AnLIVw8I5Zzwcm8aZzwSwU+XTpjoLQuYHRY3
	 QfcNSSIpxSx4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52CA3ECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 20:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166284125333.14107.5242009353406574005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb1e12e7e72b3ae1f6cab682945d88c85baa897da15c16478122e5e7b4dd8a5e
Date: Sat, 10 Sep 2022 20:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662841253
