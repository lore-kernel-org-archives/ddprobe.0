Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BEA7083D
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737831354; cv=none; b=SR4k4mN2mKF/9k7bsTZblqdYdq+F5kpW0rl9jOs1wHrKb6jmEq9YiieYHgot03Gamf5MuOTBaKHdEL0La545qyV6LqMLIodz2AyDq1OGhzFyfDS6PzgCKot+Y6Z5LlmkCj1+WBNB5jDHvnG4MK9eYigU7zrY3mLMaWM1UD3Yvmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737831354; c=relaxed/simple;
	bh=3sA35/5pfXvEQfnxftPzpuzg8NszP+1jm0Ef+TI5TlM=;
	h=To:Subject:From:Message-Id:Date; b=OCoEfv6rqhLep9Tqgsh8z+1Tr2EWGYLMOP7sPkPGm1+ViZFh8UWIHbpwiYOCqVCtTsfG04WTgc4OOcnmu57ie8liIaR8LT0NhQGyVkt5mx/q1IUsqcn4chSQ2NyFcR6fGLQPPaKKz7cXMr9jI/2p8rhkl5LfSBmXQ+m1++b+yJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bdOaQuUC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdOaQuUC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F74BC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737831353;
	bh=3sA35/5pfXvEQfnxftPzpuzg8NszP+1jm0Ef+TI5TlM=;
	h=To:Subject:From:Date:From;
	b=bdOaQuUCzARWCYG7aRAAxlVozCUUPArs/NygIWcj3pFzM2CXNxioYlJhKqOMb6wvK
	 8TxRsSdE94Lu4h6jge75l/vgp/T6aG2yfEcsf3tpTwKblURAaPBsRRKDQUdCwyllsU
	 wiKUr78Ta5T1b/K4G/UyZh8KAFGEJokzndhJycNSSLj0yFHIxCmaDYpSb85hvRNnTC
	 qcn1TxBc2XEPlk3huH74V/UYKb6MgJmq3XRW1pXByb09xJligOrIxfy7LZ+9vd/WY8
	 JXTOzC0+Ip97udX1euYAVbHVj0Ca2xTkyuUdecK+BeJNL6VxU8UeYedVASGV39Xmd3
	 /bXB5Bh+u3qKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E01DC0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173783135357.7927.8068822214244638148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac5ac4356c2a92599f760035c49efa04666254de86786d270763ca4626e384d9
Date: Sat, 25 Jan 2025 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737831353
