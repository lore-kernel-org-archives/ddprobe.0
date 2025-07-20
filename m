Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA71F174EE4
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752977393; cv=none; b=oX5+PSYd1RspXAH0y7Q1xM+Y/yNrYgJ8sU5lnm7Ng0FPcw4y9a9TG3+j6IPjMsoOqEQ562D8XgzEn9bj6GkcHhyNHo0N6lEul7kqwQc+m/vhIs+oGQ6KhFhQUKajRg9PbbQRD1CJDESwTwJI9mTbC9qql30pqlXDDuvCcK4ytCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752977393; c=relaxed/simple;
	bh=1Rq9Syr3Df+YbS+E9bOUn1SRyYNiKHSF8AN9SsrsogM=;
	h=To:Subject:From:Message-Id:Date; b=qTvxKGfOhqajnXGoyfmFHYthSHeGZr3Gcp2nSloX5ZGh6rErDp4jymo8Bu+MrRVn9Puhccac3DmffVSX2Khodm3I2w3ZGA1hO1tWf9dYQ8pV6rYg2v3MqS9MZ+jNEtn/h/+2gSiXKl1t3Qgc9J5lsWk4e//CRwhdu6akm/rwU5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNCsg77r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNCsg77r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B8DC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752977393;
	bh=1Rq9Syr3Df+YbS+E9bOUn1SRyYNiKHSF8AN9SsrsogM=;
	h=To:Subject:From:Date:From;
	b=RNCsg77rlZe73GtcWafHHYdRDfYcAr2jdB+PWUp3UcxyZQgI7jFVjo6DSAJsFffqB
	 ZoVxm4gnK1IOy9yjWOj5lG+7H0UjRVXvlGMvJypTPLJzBgWvimjBgTvAg2biinppG5
	 1Bpthr5QhAexYb688oDn7gB0e7s+mpqdtwk357QZc+yNKNdLsk2vZroHGKVXnVRpnd
	 PlXr7w0vvzzKSm8jtxhv7Pxb1ITR2RK9cSmRa7F9TUwq+FDYjk8LTnSNHDpoEU6WOs
	 BHC9/YN0yhEkGi0nU8A2N03Ovib7tDxCCTq3jb7I9xZhIiij2o83CFV6NH748rl/3t
	 Ghe1CqmIAaQew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966D5C83F27
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175297739358.20617.6251382445193914375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28768e034c2fe83896da955d1030b7275a550c1acc9eb0312f20cc72eaca565e
Date: Sun, 20 Jul 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752977393
