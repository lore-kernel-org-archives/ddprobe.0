Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC225363
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 00:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76424C433D6
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 00:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667347854;
	bh=1QEiFkEnHmOCji+plal9uHQh/dafiYE9UIYawoEgLAE=;
	h=To:Subject:From:Date:From;
	b=ks7/+q5pfVB0pDffZmO8zYRKM92lShUxKBUMA5wdL+SKoP34wuWjz/ZbYSo0RObWC
	 CJbDJJCgUxQsAHBfqTlMGglPSe/39VbAnxZYofKhJz0aREoLlsD83KM9Ro0kv8mZ4W
	 f4j7wGdhMyLng9QjlP4I6XVREwjQx+Hg64hKC6G6lfdOcJO7hawbg8xuefuLeBEvmj
	 BoofMfA1A1qJekoAUR2e+BBkZLmDs65XiYVAHEyllZIwKzOe4nj8G7kmXnxUKhxOBy
	 +3uJAuFpKDjxqzTzueTkeG9nk+dFyn5wYfvS3o1ymLyYqDSCw54Me6kgyz61+BRUjZ
	 /MStoPWX5NrTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5575DC433FE
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 00:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166734785433.1371.16553155352899850617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fb0a0e8931d6c892ecc0c85edcc160d89f28fede565f1de76fe96abf317692b
Date: Wed, 02 Nov 2022 00:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667347854
