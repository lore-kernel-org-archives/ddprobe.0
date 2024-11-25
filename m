Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254942500AE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732510554; cv=none; b=u55cqo8pmKqL5qEsTdbUBH8RdscHob3FXy+yNVyP1Fe5MRkgSkEFjVJYlbzfXsWztf3ZsTpib2+QswqGVUBcvBu8z+uwe8DiWp5uLMJCxBCUKBSZeD5WMX0YbUTkbgvEmATxk7qVW8Hrb/TQ6DceZDqQXgpJnkTO2i3JEsETcCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732510554; c=relaxed/simple;
	bh=dFa8c2Nic1grqS9xl3cGlgOZapgL6NguyTrAmSR1uGM=;
	h=To:Subject:From:Message-Id:Date; b=fnl0NVWPFFu4KJwruYhj9UYClcWXhCfYkJl/sab+ixXNUewpxpruhHtMPqofeZSxybfMP+quMk0WQb7uzGrWC17X1rmBM4fqYfE6lXb1GkUL2a1NFyzjfeUYpNJ/0LxDwHaIqpUFf3k3UvjAY+s/Hz15KFn6t5n92/LjjcpPrXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/mrqFNu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/mrqFNu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7704C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732510553;
	bh=dFa8c2Nic1grqS9xl3cGlgOZapgL6NguyTrAmSR1uGM=;
	h=To:Subject:From:Date:From;
	b=h/mrqFNufp6mWHJt5d8qVvidg46/Ru/T3dR+S9yUPvYJNW5+CZZYw+cwW9/SMShU3
	 bDAaCWKpDjvkxaTXAjdR7trNvdRgob9hSIfzLOKVxPCu1XJKmsEG2dkaO2RLTikQ6w
	 UAPGuIhe4aG2l4wuyk6G9JQgASbpqZ6lI+dY0iS9d3jd1aH6MPnYfbfSfCs0s7engH
	 3r4Em5oZbuEfvT7mNnqO+jJ69iFp1W34XYpql+eF3y+QcoDnhIYUPeeiO6/npq5zbG
	 td22jvw81KYIHcy0YepkV2c8oSMmh/W/Ivfw47p92E7a92i0k/BdOgePby5mfZnRYf
	 oDuWUBqv+Bzhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CB6D3B7D8
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173251055359.23535.7659123125287604883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3672145e834ea04aa1d280fbc0213de72047a7576eb517ed790aae1eaaa67a79
Date: Mon, 25 Nov 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732510553
