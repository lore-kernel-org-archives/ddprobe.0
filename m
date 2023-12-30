Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3DB1843
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="und8DfoZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88446C433C8
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703918896;
	bh=35E+b+2FEwLu5moG9KlpQAxxH2p1VnKK5syHpOXD8GM=;
	h=To:Subject:From:Date:From;
	b=und8DfoZGIOBy3t/+/b6Z2RvdKVQEk4BDBMlHfpwndGnVWcWni2m40hLo2HxUGGWl
	 qAJ0r7wXu66IALtqogyn05M5mRnzZSOydIynO0WfR+BrgEaKNkAUuu3Eb7y8npW37N
	 f8LwOJ7MxyuN53ur0s7jih5KzmSk2nG+KzjFq9Rmx483oSreeoZaDZlRr/Lt+Zpsqf
	 FtNp+cR2VhW5RIkZ3ijhhpXYwhmLyXsnDuBXh1nkLwEVbas+IDl5LG+0LWAWQnS/f/
	 /wsCJQxfD8ASPALmJOtIavhbOSGdhiAuC+YO2JBOJGF0+0/4Zp2SLCCGDXQYkx8iPm
	 yDHkEPYESUu4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61A0CC46CD2
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170391889638.1382.16148156162919341090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7365fc0c9224d3f6b4477b4cd81b61628a6cd14fc51f708cbddb78b5aec8bbf0
Date: Sat, 30 Dec 2023 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703918896
