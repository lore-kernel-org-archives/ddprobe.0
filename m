Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E41D28E3
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 22:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFCCC433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 22:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688943428;
	bh=M+MoBgaUfvEFIdQS7CWcC0YalrpTSFNBbWVK+zsxzP8=;
	h=To:Subject:From:Date:From;
	b=F0GC1U3LsfipHiw7k5JnvpYViLw+ukhxA/r3eCZsJRcEIsvmNkVFyGZHpxmz3VGCz
	 1KnLaXWvNTrqXdi39b/js5zlzlbwzaADjZC8e4Bay5k31hfvOqR+fKEpdTyP+UudpT
	 5pA8sGzsjT5uosfV5wQFgpmzBrh0RkQTWbZZ0vaER0KgFUmbzCm64dJCHSQXrMazxb
	 C/b0C/+16JY+1+C7RtUGkD75j6BDLYDXY15jLJYhVrs1JRhbC4Nlsm12ha3jVwHNpo
	 WEZqhn9AM5DzHjMi4UbdHqg+TbK2bOJEcxownR704nS7lDGOsZvFqwIw0RrmB/k80t
	 w/EO04zOqR7fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1FDEB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 22:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168894342870.29998.9816592860569541485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd9c2088994eef9ce08365135838413295a618747d939a30d4a568e198466835
Date: Sun, 09 Jul 2023 22:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688943428
