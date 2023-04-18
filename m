Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A3E1AFC3
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 17:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA778C433EF
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 17:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681838406;
	bh=KF0A7Ig8uUYV1SBaewvcBwfr7YZlPa3aY56D4cAgXyg=;
	h=To:Subject:From:Date:From;
	b=UIl93+l2XBarpOyAD/7P0zi67ugSANJTy+swuwKs4FNaTgH4W0SNfoF/w/eyPdX69
	 bNZSFyNmqgep7pzMrTE84v1EwvQzwoaZnWhD5EHcEfHPfOfL35BOhZuJ79JJ4VADbB
	 Xz985fNsakS17qegj8Pc8B1L6ErskPkly+G4hjSxgEXB41RGbHnGE9gc7H69IOIKvQ
	 xg3ZGG2OKrjtZb5DFvtk+4Q1SSThsvlVr6EXs1OsH6LfjgiNn9K18cdbwlqCzKak2b
	 D8u1bLGFAYHwy/Fmse/omqdGdEiLSkD73jvKf1D7HXuCa3w483UL3i20/sRWcpggO5
	 kt2mbnpSa0iPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C473FC6FD18
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 17:20:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168183840578.7908.16654597542172522573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45317e4e486f69118104c8b5f3241a4cb48fcf3ab6a40438184309b528590a6e
Date: Tue, 18 Apr 2023 17:20:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681838405
