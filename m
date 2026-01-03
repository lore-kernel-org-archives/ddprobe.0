Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D72155389
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767422634; cv=none; b=OSzS47R0lCrZLRYZSC5p7lS/EC1e+ayjnuhNxnizVQPttP9MpGoabqcfCP5YxZ9OHlDkG9IBan2KFrYciGx/X3ZQTJ3bYcrOd7U9MnDCDwKViBoZQPVKW0nFOuEj9jnrAqLs/hnfwOpba79vmJflirgvg/frO0xQR7RBRV9bWEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767422634; c=relaxed/simple;
	bh=ZkRFsB4Zioj+bM1cOu90no/rErBT6qmktajmMxiDWIM=;
	h=To:Subject:From:Message-Id:Date; b=OSvukeGNQCgNX12zXqy4vhwSHnkKMiBPtCoH/H0VR2HBDFXf0D1Ry5meKfmkH0agrR9jYjIvVPLN98J+nxbfpDKECAukiB5R6ljTEZqrAZTNMNbcPqD3Bo2asB2cILAaqrscEdTYTZdTe0Cezzsf5c4gam4S6Ux7h65Y3UbHrLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AvB1aknP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AvB1aknP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A54C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767422633;
	bh=ZkRFsB4Zioj+bM1cOu90no/rErBT6qmktajmMxiDWIM=;
	h=To:Subject:From:Date:From;
	b=AvB1aknPpwhDxRaZEORp4UT7SSkPF0CPrUjbdhS9bhFNfIDvQoC3Mi4QsKEKsxqqL
	 YkYcPOJRTnm3S+urDq+tKOm1a0Qvx7jfZ3Isn8HB/BQDMCUKYf5iQLffQZBfpEGHZI
	 Irnfz7iJHcivDzCVScRzsAvrDa6nqiTprmCSKd9T3Xpg4PyyLN/AlSkwuJEeEBkq7b
	 RJTABU8GMG3ITuFWDWsXb97FDN39zTxXiFwrF7qrBb2/+VkloTyMqxAOnmysnIGeyV
	 kKQEZE3HJqYqpBxE/XVqKNa4kGLu7anZrkBPhVcSP3gf4Eu6HWa+zqEaJFAK9Jkzbu
	 F/7WbLjEBgy6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91457FC6174
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176742263357.16655.9309994282383767917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5feb3a4fd700cc75c4d34ef94093ef39960ed02d643672d9b086082d5d391de5
Date: Sat, 03 Jan 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767422633
