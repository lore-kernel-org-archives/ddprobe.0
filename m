Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E3D336EC9
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 04:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779339034; cv=none; b=r+JqMXK9BOwR3GSOdxQrRAx52ah7+I+aO3oV+d/nL5vvLfKzROv8lp3NEvgEu7v8lR1IUConzvrcqxBTxH9gHD5uE3UIrRsV++++G2Lu0WQ5jPFdbHSximb3lx0gJNyIE7oecEw22B9S+A33V2D6OjwMS/hXCGY0ns3czeqR46A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779339034; c=relaxed/simple;
	bh=kdM0hdDz02DCkshq0yp7PNwjMxTKKmxi4O7Q/DqWFWs=;
	h=To:Subject:From:Message-Id:Date; b=OIvfHXxMFlig6ctIfREvLTf52usHH0Y+XPd91hn1h9MSeyKWjWCyWFbI43AhQQ+0+Rc6cHgUH1mruEDbldbsblYcYAtHoaOdd3LMnlsTGyzsa8Ocz5Er+W1F+Ak/FsEiTbit8mXQPL5s0/uyUp32WYvqgEvexIZJife7SIrLxao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qqVchmuG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qqVchmuG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5F6C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779339033;
	bh=kdM0hdDz02DCkshq0yp7PNwjMxTKKmxi4O7Q/DqWFWs=;
	h=To:Subject:From:Date:From;
	b=qqVchmuGUYugNg5FV4seBC9MR5YEdtHr0/ZmfhfvMXobKBSwB9ddtvRU4YijC2ZMA
	 JYA9ghQQ1bb/WNbu18+8zJt4rYdl+5uH2NLYBxrTwrDTFIzg8lWdX+JwCzaulV+igA
	 F2m21KW1IUHdLv9HcWjOlI7GGahpcAWfIwgYsJv/5iCzJCra6sE5W2zSqfJxDgzxEe
	 lfDte53f+uLqpm0PKx6IC4PJO8xX/cqQyD+SOIqxSTv6lWGnKqSfZrJHtvSqqZNvNG
	 k+4YqGN/0wB1fjOz/xUwBNjkfOrEv7F1pR240JxOEpUiibm9quMkWrPRzlz5k9ZDxo
	 4GUYqFBwg5LWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1EADCD4F3D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177933903369.16528.12990583195831150225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 090ff7e6959e3ccd0a5fe04e2ebecfbf402fe8e986b0f03da5cf79657b8026e4
Date: Thu, 21 May 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779339033
