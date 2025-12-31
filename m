Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251731A9F82
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767216834; cv=none; b=mTeJ2thO2dXt7Fi3R73aKnJtIElPusJRZl24Qg7U+odaVrlAVk7xd3IFlZHM0I6PiSlpiRc3nkdrMQV8osUoKOEza6L8j6hbSqsLhPvtH4BcNi+M3S8LoLtMAbXgK/KjPt9Y3ovABvSl63F3Y7JEeibQnIuJAFWcX1w00fIBtAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767216834; c=relaxed/simple;
	bh=QU2+PMFZRyvrR2LaOlXIEShOOoZQsREwNa1lCtp2CCk=;
	h=To:Subject:From:Message-Id:Date; b=rD86QCt9pFT7IbPZi1u3oS8sgzei3K56GVmllxxQllK8hzln8qud+0KQ6Umbvhxg0zxLBPKknXyw/CGaYf0d9YRGSQkCgWFMDXZdUxhwl0RgHIzVfgmEPpha0YSKUwBvSLIBOKb7x4rHKOcRAcbsucxt4r46DR4QoSp8c1rxwjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IMooCY4c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IMooCY4c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9919C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767216833;
	bh=QU2+PMFZRyvrR2LaOlXIEShOOoZQsREwNa1lCtp2CCk=;
	h=To:Subject:From:Date:From;
	b=IMooCY4cX9bFuh8oK7+MYHeUMaIJ/U5qwttxW+dE06St+PwgHsf6v7MICE3YlMhU+
	 QOv7nHsZV6YbWR+ekO4+aGSOZ6Z1CWyEPYRMclZ1EXxZEtFAWdR8Ho3BWjZsM3jqyt
	 TFFU8aGM332Lmijnea2wIkFsYMqVeSH4Y/L6ovCUow3M3+AKYUtcYTvcXRGl0Q8bw9
	 vfmwkrFxi1JW6hcNtNXXQ6MVPHL99vk9YM9w75kJyhZp7kHxywL2d4yvmHFwHbNOj+
	 hVt7fZbVnqMpXqq/xDwCvNjS+TEOPYHgdowSdqPCluCVKMQuFRPMdx8gz5pBvchv1x
	 T7W/5IP2TjfRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A0AEE57C5
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176721683358.29298.11742166128909223231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66ef5f8e2c97c9e44ba81f2a00b5efb6c582508ba56759876e7f3316e81faffe
Date: Wed, 31 Dec 2025 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767216833
