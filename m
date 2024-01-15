Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0800617C61
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 17:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GIZX1hdi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 788F8C43390
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 17:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705338496;
	bh=Iiv3BPW2F9zP9hkRCaCwaDgzJdM1Cc18oyXZovGxJf8=;
	h=To:Subject:From:Date:From;
	b=GIZX1hdie53siPoYlR2RCiIvYI8b/ZpEN73jaLry6m5AQFIuqX6X2Bmifs83vCRms
	 b0AGghFNpGfmec/g16SAaSubdaKnHED015xfOiqK75Xl+EmLx13nEJrTfx1hXNgxjM
	 m/+m66W7ZP0vl3b1U+UuWVB3J6QHLn7SIgnRnMvXfVDCvOO1s97SkLCwZYPll0gpmy
	 Y9hDLsfO4cdH7MPrVV4hOFRRE4DpiwnJYGRiQoe3ieCqDZAY2AtZ8EMfnS6M/aIbus
	 qLcINclM31r0yDO9TcupGsWXaU3pcaFN9EkQs+WiO9gT1dssEbH7Q+CCGd/YhEMLM9
	 j4gWOh3AgKN7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C497C3DA79
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 17:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170533849637.20700.15087731903988084640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12aa04fe22f7c55f2673b5745d512580a07b0940ab9d670348a6062a3b5954f2
Date: Mon, 15 Jan 2024 17:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705338496
