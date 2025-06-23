Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15840A95C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750654794; cv=none; b=W/LJOIBVcUXexTiKHEOLAL4CUpbqsyQUPm7zcfQttvi1XiMfvZHVvH9z3XFdlOCH1Wh7KiMb/fsh6696N+urcNTLhpTqvUAajwlNgYBMu2zPCJU+KVh/4A4CjaM5yjmfGwIu529wDvwId7cQ6mde0Lb0KraYcowLA7wSvmSAThI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750654794; c=relaxed/simple;
	bh=XWDmE3PlLDsqWGdhXwuxR7Z/aBOJsxlOBFmstdUtQEQ=;
	h=To:Subject:From:Message-Id:Date; b=g048Z2c+kZlDmu7taYgyUpRR+FhWWDqQQ4eHQD4nNvRwGnNAuJ38CUk0Bruj/O0tDQ5RRpKABUhTzGRT4dhUhVOfsEVYwOWAbQhKaTAe6MjyCYKkSujOd1fPDwtbcQlccutiPG09+HEROgnKWVQD5EqXm48fLKuSRXNKqtrIsjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hW0P48BJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hW0P48BJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F5BC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750654793;
	bh=XWDmE3PlLDsqWGdhXwuxR7Z/aBOJsxlOBFmstdUtQEQ=;
	h=To:Subject:From:Date:From;
	b=hW0P48BJcLxCfRLZU2u5S7ONJd5QIWa6FPni2cLaRoxelqGmN+8byIYcT30/mYQdC
	 6j0iOTOa1gIA6DdK6zqO59wcHfEy3TNYrEvPyRrBm7dpcKtlz6qtHaOHmZ3qhtDunp
	 fgn1NdmRNKWXNx2iqTtiebBvBHPYuN3pCjdiwx5XQxtihxkr90HwjlI1U9HFB6Nu/6
	 JXkx2iFHtmbMBuuZdg/F46pgsc1Tq+CflL56KJe3ugCBLK856MyoG1fRkeDCooPncJ
	 SPiUWzaaVDWSFiGbizO/CtWtCd+0ZRNvT4UrDYqkMJDdXtkJcIz8IHmW5DJGGb1RnH
	 V4rvI+qzV3iGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901C5C7115D
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175065479358.16447.650057631826575676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b167e2167173dd551a1fc132528baf75721e0dc1cfdc135ff79858325c902fd
Date: Mon, 23 Jun 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750654793
