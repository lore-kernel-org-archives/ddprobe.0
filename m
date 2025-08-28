Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D6B1E7C27
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756346395; cv=none; b=ObwuJ0OmJSityZqFBxnpk1nwyKAK9sCXamF3EBY5hejYZNfDvJc6WHPi5WF1tcBbQ34d8u/2uDaVhm/A8EDCoaxnl2tbBcGfnm4Yc3RsrcxRa5m+zFzllgqSaGNirc77YDSAM/SgPatykGxi9vqXd8IakznUisiO7J4VyXDPEJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756346395; c=relaxed/simple;
	bh=iXG/sE0MNqD1f+rHJdKMeLrYlOE0LS+HlYantcEJNA8=;
	h=To:Subject:From:Message-Id:Date; b=keilDGcDcH30dpBVk3q9ZlTwqAKO6pbV0FPL7EN8jt5uSofSbaqkN3CHVuE9nuRCoHsJkNiOa67vjmue4Zcc522CQGYW7qYUmP69MKYj4fZlMeRT+ZLReIUyt8CCsKfA9k2Nyp6C41RG8kuUfpMT+03f8svu8eeHO3If34ffeBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oMnTRK7Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oMnTRK7Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25C2C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756346393;
	bh=iXG/sE0MNqD1f+rHJdKMeLrYlOE0LS+HlYantcEJNA8=;
	h=To:Subject:From:Date:From;
	b=oMnTRK7Z+vHjrOA1uDFSfKT8mrl4LRpqUZTGW2fhmCTWGkCaNT/g+Y6SzTrz5F/oO
	 yOtfO3EXdyvckpD0tSyli/PY8VvMyVbsj7N/YLt/hlmN01Siy+YBvzByILVoQP/XpF
	 hbPqA6rSxhb/tptu14GUMxBY1Mu41D3HplVwkYRWUJQNDkyeZkQTTJgUa4wmEzJipX
	 TlBlNJz4/9ZJh/0zuo14+U9wdW2gUCuK7JciE2jdraravZ8mk76/v7HjGcFNvjYB6l
	 NBIstqapgLFHAMbH5AMsbNmI5PnYPcsuCA4zVwPSomTxgHOAVc/A7yb/qMMLiPxVbK
	 sQyJx/oo44E6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F025CA0EFF
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175634639357.3201.40955155185527970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afdb719c8871e879317cb297b55bcb57b84978751fc843448eb1d67c916a2304
Date: Thu, 28 Aug 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756346393
