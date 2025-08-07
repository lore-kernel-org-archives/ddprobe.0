Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341071F95C
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754528994; cv=none; b=WfibB2QNo4+Rl0ZWXsFHvSl3OUo8BoQlcfMCF1b4e5gt9+C8V8mpQaR2mVbPJKU2VCTidBTUGhmb2/2/QpFAyXcu67w5EMkTzNsA4M6eRN42TwzchAzJNwY/3z4eMTDU4HKIE2oXq463OjYH/c7QmLGZSQs2ZyB3iZ0xIDmxhao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754528994; c=relaxed/simple;
	bh=SF8XWHdosRwW7DhDud+FCqEzMMTuzCpFIDHDr4EFICs=;
	h=To:Subject:From:Message-Id:Date; b=ntANsvjA+t3Vr43uEUIPHTz3exxFRCb7eAI0VDywe6r9l4E4RhhY2SNEgJ1WQOEEycSrDWocjVmDRgP78dvNwFmoj70b1wetpWuAQN6ZGhn5A7i7YMxrZRZR+sg1E3qnBd8DZx4yo/hDGqecHvCdP+WSSWt8zn9WJE6w13CVlAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mKU9twdK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mKU9twdK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADCFDC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754528993;
	bh=SF8XWHdosRwW7DhDud+FCqEzMMTuzCpFIDHDr4EFICs=;
	h=To:Subject:From:Date:From;
	b=mKU9twdKNTVquWz3MgCFqNzEDTAnpSbbAE4HZGMnA/oO4OZu3LfosGW+UWLN6+1Dq
	 DVZQUxwTmi4vIP9ADzsx6sO0j2GtzPqIhdOBT4dBJKJ+YIi57pl+xyWIZy/R0DDSHe
	 GMqPrstcvYKBvEQqdkY3gIxxkNNA5YwVo6gsxmGR31b3VTYOtQkJksYqGitBepheCW
	 rS3QURJKuyKXnloJBv9CHGhP4wuSw0pGLHYqqQtQNVNrZ5Xt0V7jZ/dHnT1EgcyTm2
	 IkdqujQyzKSQg1aucy4Q3yob5ksEL2foW4qE5dX0YK0mDGQGqL78O3G39U9EdZ9vAB
	 f9HqNtocvxnOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DA8C87FD3
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175452899357.8239.593003363157086800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bc1d65db7aab7c540899a1826acc45ff413cfc6316424883a56aaa428ef0788
Date: Thu, 07 Aug 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754528993
