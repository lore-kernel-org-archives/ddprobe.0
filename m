Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E6B252F6B
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712442497; cv=none; b=l2CBD5M6aLUSbAbiCvz4JmpDX0aDThDdWtODx6JZVfp3PWapwjPzuGsPkef/MJSYo0DOaXsVizqA3nZzH5sFh1kznBUQxGxcEXD7pGu1YU3KRi2UHErNkW+FCSm0yczG5vFp2dqSYXuKmZvdxgalZgAbUIVQgitU7ApQ2Rt746c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712442497; c=relaxed/simple;
	bh=NL9cSHC8FIJxkcR5iudjXSD5rLW9eJJ2ZxSd6tvEwBU=;
	h=To:Subject:From:Message-Id:Date; b=FAFsz3rIubhW5bGQyJkWw+is1FXQWWaMLeXAkJ7pENpmqfMkYima2zXRVgFCK1yjI+sVZ2eXuJb3Dlp57e0quO/eFQPDjsiY823Ii/dL4TGCRRoLFlQwCCzSM8Pvxr37iJAhu18XRumwo/FdT5FVdFRQtvZOWCc1l9kPbAyrUm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8l7dXc1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8l7dXc1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FDBAC433F1
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712442496;
	bh=NL9cSHC8FIJxkcR5iudjXSD5rLW9eJJ2ZxSd6tvEwBU=;
	h=To:Subject:From:Date:From;
	b=c8l7dXc1pt4GSLeBZeZSefIhq6kqvQ1pif7CbFcpPTj29g7cqHk8i/TMsjigZZMX2
	 Mdq9+268xS7hHVqqcQfNLG6BT+mVB9HLIYSEpra0be71Mr5GXA9fhvF0vM3d6JPNNz
	 H4ZxnLmEYtOSCRgQlpEovYhGs/IB64Ruth9GkAvrgADsLYgVAXI5NsOZ2z9Kan7gU7
	 WVH8EIAmexFxx4VSP3uLwuNKp0/Mi7D8p7kmrWvUuKb1gL52IwcpQ2c1ciNZ5ecrzp
	 ob2YWM7GITy9uq125TrnDbEGJZ1uXooDlO3dfCq+T/aRl/pkuzoGGSrKbqr1L+ExF3
	 WFjdb1G7Z1vJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B58DC67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171244249640.4399.11240842981184764931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8ee163e0642770fc21473563cc9e76dead6ef1ad498d542804caf1ceca85338
Date: Sat, 06 Apr 2024 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712442496
