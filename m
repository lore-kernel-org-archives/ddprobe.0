Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD064B04AB
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786926034; cv=none; b=OorOxWgeoJg9vfuuu4zRLGB5eXCtJzZ2lunbP3pC6rvnXS2MbcY8ttcvB671gs2EySqlxVJx1s8E+MrciDX+c9tbZaZtYuB5JvoiBxQChOb6wNlmnU+qHe8CCuQUnoi3hmM8eZHvKPjvwYorjShYAuSFXe9BNsmZ93RR3cTaqf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786926034; c=relaxed/simple;
	bh=j3xBx08aqGUqo5aHtBxe1B635sRYp/LgOSW2lurFhvU=;
	h=To:Subject:From:Message-Id:Date; b=tZaw86wpuZfC6AIbpS0O2+bgePBExIZLJOic/aR7EaCzCLjg+q2YOrPt0Xg1BoZa2sPzF9VGywG1uEElVxp82puxco3XxloRCW8c4Rq9llYpS3zbsPakIFTXOT/qb07cD2+lkGJdg3Bky01lXZHMkSThUWnwYbiELoOKb056zXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZKrYO1f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZKrYO1f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA725C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786926033;
	bh=j3xBx08aqGUqo5aHtBxe1B635sRYp/LgOSW2lurFhvU=;
	h=To:Subject:From:Date:From;
	b=HZKrYO1fAPQz/lyEqAAJur4YkuMMr5Pd1Uck/i9UPUi48I4n+DGnMpsM5Ifv0naKj
	 1SUQZvNTcqeOehrIrKtMlC/xoEKh8VDimEenYNLDtq34NB/1/YyCSfGAbn8rRjM6uh
	 ZPuOeCQ6rqUNuKfwtJ/7thVypoP5xFkqhgHdx8gTt2MDlhMLoA9GLGX/UyEI5I7Ytj
	 pAR9HWI/oOIKwq6BTrqVGwT2V8Hnj+OQPL2mYefkZ91Cp6PfNbfl7BJ/PLMS4YCpqf
	 ZhWlnOeOrn9qqDkKlDgRJEC36+ob8aoh+Zq5xpslPfr0xvAM8CwHedwDdiGEyW7f0K
	 8hHJf4yJoqggw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0887C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178692603368.7872.9531319399636498376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb8023658cf9cb682ca32677580b53c6f2ad327ddeb6d50158da3f997d4bdaf2
Date: Mon, 17 Aug 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786926033
