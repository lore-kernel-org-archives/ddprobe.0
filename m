Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C41127E18
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 13:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715347943; cv=none; b=kSoJdINfQzTMf7+sgAQkdDQN56WyYReZyiIMvamGO4w9LUG4Nkyq7yVU2N2farWSorOlZFfP+NhK+VUzMrwt+7IJycBd3xH4DuYcVH1E9nmF0u+nHuwUKNLLc51/JzWrf2WJBF8GAsuSyGYSoNQlDR6mo8G7RZr8A7UYdKPwDSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715347943; c=relaxed/simple;
	bh=fdwKDVKVaQO/rEizn9Q62yMJQN6/SorwEJSPSpkzI8U=;
	h=To:Subject:From:Message-Id:Date; b=DvXt5PP6HYz9TkHtGEdHRahS3suj1VOFr4M7Cr6vRrb7ed9Gmo2F2ognJDvTuT3CQCaRGBaMe8EnPBKD3Uj7EN8Ty/+abUOEehqO1ADP7PmF2ZcyhKLfYqvLFDpEX/bLwiwuuX+PoUNSq9rnJ0+W9FepGxO9b2W4JzWZpFBJL/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eGdckIKr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eGdckIKr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF28CC113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 13:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715347942;
	bh=fdwKDVKVaQO/rEizn9Q62yMJQN6/SorwEJSPSpkzI8U=;
	h=To:Subject:From:Date:From;
	b=eGdckIKrjWpBsFvmqpsTONu9nI1nrDVNSg7tc/d3F54UL4oynQRCYg63+NOS6xEJU
	 kLwaO4yCtT+zhkMUBdSeu4ExCFcumoAbtROvqd/ODmBF8JbYDSRSXp67cFi8fSMVEh
	 ntHDIWmCpu1GHidRI2DKV6iCFDVMmJYDIJa7kgZkXaZ9mfdsC6CZG/D3WtrAzseQzK
	 rR4+bRSvhLGgRh5mz9TnW0ySTHSp24unSrNycieiK/I4qr42pDAGZtT16Dcduyanhu
	 5QYOvXrEBazbaFTSpEaA7tLhRFHwPMTWz+mcj4nq2YpQjitj8km3xtYD9bKwPrRXiy
	 76p5IM95OuJlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC842C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 13:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171534794276.415.4627490457425397795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78a0e0c3cb69f2965c2d45002643a3bb329c92756f89ba054b3aeabf4c1090a5
Date: Fri, 10 May 2024 13:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715347942
