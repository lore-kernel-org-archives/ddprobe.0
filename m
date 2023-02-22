Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452D2A953
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 23:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF9AFC433EF
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 23:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677109445;
	bh=H0o6aGD6GOoRzy1oPtULHNnDpXkgZkCEKBfIh5cnlns=;
	h=To:Subject:From:Date:From;
	b=rglc3kau68i3AbW/oo+YrTKyCYx3H2pMW6lP1tDHymLc7ufO3N+zRgm6RkBMuTcUh
	 X9Q1KowwbK8nDTEJGpxRjsqs00uXH2hZgI2TQ7AWsavFS2YVAgcHgSka58rFQ9KhsG
	 srFjhuRchOuF8F7eZsCAJ3yzU7yPQi6fKS4ZmGX9yBKKy/88OdrB/ku58/lGRj0led
	 IMjZpKviCJyUmNDlqLsiRJbFVfolgS7ecESeh9kAGt4pG41KBxSVEIew9ChgY6SYFJ
	 Es6zfCVIhK6Sc+gzd2Avn5GbeNbjLv8DVH4CLk9TI8ZRFBkaOUkRSgfK+SOmDuy3rx
	 kSGY4HRf+mPdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B667CC636D6
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 23:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167710944573.30644.260743574928863709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dea03ddd31ffa81c4a8e0b9f3790c2ef1e2ef5c009e20f2c2700d69dc9d7bb2
Date: Wed, 22 Feb 2023 23:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677109445
