Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B3615199D
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 13:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739540934; cv=none; b=bu1jWEu1D/QahAr1DkyMmC/NTxKpWCXz1RbcaeL/0m6WSmdJftQxnY85XIvJSS6frPWbx3QRrS4EIsFbALdljM3j7ncMXDzlSt5dxmmJm/AB5+dhgCBFnRvN1zAug7LKYYTM3fBa/XJZ5qPPLvf6p7dKiCJswYtzGWtFSOrv/yU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739540934; c=relaxed/simple;
	bh=gJyDd4FEjvn/ZkVBMlR2yLfC2Nzi9nhYTC/Wpi49WbE=;
	h=To:Subject:From:Message-Id:Date; b=XYYqbZTh93IhMzJqj/DVciusTmvXJXKxAgb40kI90t2MiTqacnEPgW7Npo7Ll7Xr9UHeZw3EvG1BwqujPSBHMupJXE9zglTmvz8YR3Ap+jELp2w2/N60NnT/ldUfW81LjmNFi2RnoU+llR6YuGbgSSo0l+0+lyM2lA85/hZBgZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJrMAwA7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJrMAwA7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB504C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 13:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739540933;
	bh=gJyDd4FEjvn/ZkVBMlR2yLfC2Nzi9nhYTC/Wpi49WbE=;
	h=To:Subject:From:Date:From;
	b=SJrMAwA70aevCg+IS2gjeO0GoiVtFPRgKsC05o1RKc7jdGsyiil1jS0T3Kqcr6HQB
	 Xc8s9npqHEIyYmnCoigWObbjy9vWLVtaHbxsRN7GyundByeLSS1QBDn3sZ7u4vSYcr
	 5qwNPHz5JBEdgWHTLDy4zOpZTB1+CaJlRejKWIOkQYK33kPUH4rmKg/ehJxJx7xQOG
	 BIjMz8qefh3GPdyXGKsOFPLAtWPhE7Qyt162WNVbaJ59Zkff5tMQtgvEJXeDj7Iain
	 OGWer94deh+deSCWAA9tHLn4LQOeTptY2uH91gJH8FlkdInqmkXBypqcbpbGB+yatd
	 EUrcR0iJpWZ4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9868CC02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 13:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173954093361.27965.16189326398838725347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c177e2d7d1b393fb5c67e79da36bf636c5fec2e0524017a504eb992b2c4607b0
Date: Fri, 14 Feb 2025 13:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739540933
