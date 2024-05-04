Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561091CD3F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 12:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714825943; cv=none; b=iwoD9BX04qvUxjxvD2dGUZNvQY1ltcWpcRJioQFx53hVfWtro0uMbDRYE3ffJZnFdNBkYaHT+FpSNav7MO8/mTH5NEJKcAef+XIV+p/bM+ktJ+o7nYAMcuq2A6o6wSTF1YENZ2UGMiYTPS3Ltoo3gDyJV5OeuTdEO6p5YIhJJ6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714825943; c=relaxed/simple;
	bh=DDKeeP9nNapUvWXnbqaBs5OWV5/o2p9gSdzIzYnBSQ0=;
	h=To:Subject:From:Message-Id:Date; b=kAwOa5NNb2IfCOWI606q6rtVmCvPvId60Oefc5Wiv5xt4Yt3P0oigzNzwZEJgOLU00JlbN0piwde9/3OYWUZl48iDGx+TYEf4hLGEH2rIgkYhijoo3a5rlmPJ0+V4dzN4kp04ci8caQjYvC3pYpbrWTqkwWbt5DbwlWf/yTey9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vPw4uwWv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vPw4uwWv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC03CC072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 12:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714825942;
	bh=DDKeeP9nNapUvWXnbqaBs5OWV5/o2p9gSdzIzYnBSQ0=;
	h=To:Subject:From:Date:From;
	b=vPw4uwWvdBpF11yEJS1JQnDfG3ouiZns/X4Rdhs7f2+V2uBkABLbmOavU4r6cSnHV
	 Jax5KpyVGokrPeBj/BYmmdNMfhoTwBM0SicP/v081mPiTcVLIhE7KidIDkUt2RcyPM
	 Dbk4sAueTFVG1iEqZNR5ukT6msPZh0M+d82dIlWyuZ23obz9M1iSRaYOt2J7RlUWOG
	 +xqNzKJk2qoqTI+Pu2OHvzm3B3wXiUpqRXwPmQx7nBwuLbUmfpZMzgteEBHi0efe4D
	 BcR43L7IuPnshRWrJp+GhNNVz0NwK4dTu/VpMqpIPyvx6n7I4wx9sCo8Vj+cvA3BFX
	 HQ+stmR6aTA4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CADD2C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 12:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171482594282.13855.1043127595535726076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10ef074742d9a900748071dfe5720b00211092fd95fb806ea00cb8db77f64446
Date: Sat, 04 May 2024 12:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714825942
