Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E57033A711
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 06:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784787574; cv=none; b=J9Gcj/JxQaKG8vMs8O5KLHspsF6Xac8XZ+/fc9eNIoLJY34a02UyDv0NJ/LSVqE8fuup6Fikr87CTJfZoKJ6sqr7BKh9R/K/MyRSM+HV28iLVS561K/yE3qNPZD6P6Fn7aR7O1twX1dFHQFJPcd5P7ixw6YWqABBjyrY1DBreHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784787574; c=relaxed/simple;
	bh=fRMBWPPSfMCjuKt//5xf3fPYkvp7YYqah/9/I7zsO6k=;
	h=To:Subject:From:Message-Id:Date; b=rf3QiFzvRVlgykwa7//bl1/wH2Heix/kmoVgEMCSpg+sXIBb7CSZH39Qt26mPjGJbn4s78mt2r92Sgtya8ocJPAI0lpcWsd+yVjhPaJTxET1jJ50j5RM5IOT2mtxIoUCncNDYD7gSOkLn/AjzIwZ9R6egHc4xaf8PpyHzMOFpwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uc+PxGN4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uc+PxGN4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B69FC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 06:19:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784787574;
	bh=fRMBWPPSfMCjuKt//5xf3fPYkvp7YYqah/9/I7zsO6k=;
	h=To:Subject:From:Date:From;
	b=uc+PxGN4t7Jev1hh6oKA6ROqb+gk9H5H4AiPY3csxlYjc+dJJOxqDNypoY4GE+nYK
	 6CfJy9Y0+s9qvFHA5MDk5tZbc6YlWIhyW4p5TLjeXPmiRcCPqBuSmRSn5QIg2QapB9
	 AFrE2U7w+sQOmyn7V+FsZ78w9FmZ7uuc46lYDGrjN8DoJ2oWCtE297vLmYcNF0Y87l
	 7zq+A0YLXM7Zcr9r5COC7GbaVRFLBxWfVIuX3ggaZd6Ghd7Ub7EToQBk4MY/pX8gPC
	 AYSg6PwUKf4Zo96R4o0GMaEsuLn2NzUjaHmPU9JyG3Qcjar9fLHQ004YHmDZ1YsaeP
	 HamH6yOX4ASiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB041C44524
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 06:19:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178478757375.1148.9086373640693494654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d92ed4b3025d7a8f85280ce77cd882472b5e29fd8deffba07bd14b521a17f59a
Date: Thu, 23 Jul 2026 06:19:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784787573
