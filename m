Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49CEF18DB18
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 04:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742012934; cv=none; b=S9eouEnsRngmbj6IW+HLpIvdtr9NQp9THw14IR7qU8UKMz/OmlQ8STnARiIn+nUc6hrS3RjhhwaLhyrxRk7KgkZq19KeL9ETzbfOrUJdZB9pIUtfnLIbpNI+Q2odZefhbmiTaUPGD23fq+0u70l/oPD7Kg2VApdBo/eW2hk0MK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742012934; c=relaxed/simple;
	bh=MTHQaoK95u+Vu3Mkflm3DlaxwpdGJlBqiKsOMvi6JyU=;
	h=To:Subject:From:Message-Id:Date; b=Jis2qnePjq0XcCpxHAhd6eJc5Wnmjqi536hYjV2nJsfvd53DBwfa/iWnxpVMD41rZAjoDkBOz6jhpqdPMVNT7/iWswdPjKr7nsbYOuIK5CJsn2h59oXx5qjt7zCbofvKKvd662AWMVR1eg9H6Z6V7CXzTPItdZ95/Hl+AvXOBaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KwMRDZ9+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KwMRDZ9+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9844C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 04:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742012933;
	bh=MTHQaoK95u+Vu3Mkflm3DlaxwpdGJlBqiKsOMvi6JyU=;
	h=To:Subject:From:Date:From;
	b=KwMRDZ9+pskMA+30Zd7dnEeizn0NdxUDRUBoft30qXwFGqqqev6R1loYb3PS6bDR2
	 5rlXn+l8x6nlV4FLKvE5mWl5P2s+SRAQp+Cjj6tEDtowQY2yLMT6G6fw0vT2lW6Jdu
	 Q/67RpAWJFR9wPb9Hct4FY2fRLvcuXPuDYCCvEAR9UfSerncROobHK6yfv9X97ApDz
	 Ts4RPPcntlSMMbcZemIeOikyhufkbMRvR8VUxgsXoThSxwZVNHQbgFO3pxFQgPt0X3
	 AWm0vm21vmZ89EuaRRl0kA1Z3U3ZUZJwNnmVEYWg7huhgt7QYb6ORACARmsl1geoKX
	 VVfR2XSPaUUFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F1A7C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 04:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174201293361.17119.550162543916639052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4bebb26520572a82d6e06d2d11a1d853f60bf77bfa09e4e1859e787eb7871e5
Date: Sat, 15 Mar 2025 04:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742012933
