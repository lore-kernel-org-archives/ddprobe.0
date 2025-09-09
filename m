Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C60632CF7A
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757422794; cv=none; b=Kb9NmU260sBB6KMgr0I/D1wOy+bk5WPb7RfylqM318pn5rC39eUbUY85lIlGCjj3HPJzSj0G2xq26tz5WLj3bcs33+mGQGDo4Y1DZE8Yrlj9vX7kdxbuRzgM2T0CCyIe0nBR6g1pPSRiWZi5BYhjmczDQqg8FIQnO60rBxFH1MY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757422794; c=relaxed/simple;
	bh=ZgMFVJCLTvUNztFHtSLuwuufj2AIs9lzuCwUPaHbVwg=;
	h=To:Subject:From:Message-Id:Date; b=oXSWZ07OQDFWS/4Kxn3IIqWqI8AMp0vQ1dAl28eUH/3U4vE/5Dcr/MA+YLEkuhOM8t9sjFpecA1tz0Hgi4HXPJ2bFAi2szfFYa14V5/fZKEsa51Rw6uqXBTbMRBvuG6f5E+aE4HNDJ0FdxhqcOh1kXhW4957cyUcO+NGOlDmbxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eF10PQN8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eF10PQN8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A364CC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757422793;
	bh=ZgMFVJCLTvUNztFHtSLuwuufj2AIs9lzuCwUPaHbVwg=;
	h=To:Subject:From:Date:From;
	b=eF10PQN8MRe1EIFaAfueCyCkbThMxiV72RcosOmTewfh3W5qY9nvIsUiiP5fwS84h
	 1caFTfOlyA7Ryp8Nx5+DNHq0kuoiXk95knEmvozv/u1nT/Vah62fzysv99/50yEiTz
	 RkrdIRMwCscvHzpJX8inzPA/lyVatU64dMAbxOFc14Xdu0f5R/WuX87DbMPoctlusY
	 j1ISNwDa/ehvh3BN9VAwFYg96KD7unKEXNKK+aOO/1uYBDXXXRila0nmBVc7KjqJt+
	 mpsNszyvf7c6VHXSkqIAON1fAmDHUBLl0ZxAGbtlqhzTEzVOkt5AkFSv3zcpn5hNF6
	 bjzD9qpr9J4fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E0BCAC583
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175742279358.28724.18293363795840665031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acddba36fc11aebfcf8255940cba4c2fba5baa19e8cc1d1af4601b8a71544cdb
Date: Tue, 09 Sep 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757422793
