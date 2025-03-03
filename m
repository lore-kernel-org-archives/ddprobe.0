Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D6E214A64
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 19:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741028935; cv=none; b=i/G1aMjN7kz+sO3Bd3iJN6PEFAucGKGXovAQMo47P7Ou0+cdA74c0tNwuMZ91ElHVTWRE+XdCgtXSoTpXPkQ4Mt6qObKZ8vQewdnMROEKFxcBgXcf11V7qDTxOXIwpQKGL3oH3h16KZXYu6VOhq/XJvN2weh2waeNH2qHDpDEVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741028935; c=relaxed/simple;
	bh=tTK6pXI2VkcdEmx8qQFQoAWnQewQ6DAhSxxBf1Yvv5Q=;
	h=To:Subject:From:Message-Id:Date; b=ZD39pREEOmRnvKcyqQrWannhn7WfCXeH05G1d6NLkfg6M06q5b2BDMDSLePqpLjXc+SlDox+pAZfk8WKrlGRKcQcDojd7jU66DmNSn8j5v4aA0HHsxow5r1+7D2lp6VTSSvY5CFpsfnxiESpyseFFD9qZvIY5pXYTJtGEz6xcfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4NmL20L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4NmL20L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9604C4CEE5
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 19:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741028933;
	bh=tTK6pXI2VkcdEmx8qQFQoAWnQewQ6DAhSxxBf1Yvv5Q=;
	h=To:Subject:From:Date:From;
	b=u4NmL20LbnT19G77mz5tIzPlXu1tiRNRNfAmoViuI7cCtSvO/ka2DVEzzeRGkfZPK
	 ISMyV/9bO2I5eujhflQ4F+nef7lKxG89ImUUXJ21s4cF5t1O6WLBnDnAKk3GgENdbm
	 0ezkaN5Vc6+AZAi9cQyXs5kzGFOZeCnftjb95Xdt0sWcEDYOgkD9BcNgA9+wE2O8t6
	 aA+XfMN4wnr7KpkXw1xSDXmDaKyrLnM0tp8J1w7OvJWPbIOuIE5Uenm1GWds4lxyw/
	 n5hzv8gbccJtvddTFDrt3hSwfMj6NnRqE4bKULSb77TwClXpwY09nlLiosMdFPy7pS
	 /vYztYzbBPu3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96405C282C6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 19:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174102893358.31413.17268729437472505598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbdbae58933d183a18a920539a724965236b729c1b2c1360a7eecb66c386b3d6
Date: Mon, 03 Mar 2025 19:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741028933
