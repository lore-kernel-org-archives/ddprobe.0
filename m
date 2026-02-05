Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB92236E495
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770288833; cv=none; b=IlkpYLYvQNwY5OASTmyD403AOulRNiIZ2Ak6qOk92/wr2nWf9ltTrf0dVH0BcFWJtpCgezZ3vDQ8cFTGoOYYldeoH1c+QXns7mA2TisvR4oYJMdV3Nq3fFViW0rSDBrBXQz6TaDRTp6gfHHbqx/CM8M2S1QrOdYnmExaHVKwdHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770288833; c=relaxed/simple;
	bh=Kl/Phrd7A7bX5oV+bL1YULjYrEP730AherB9tq//fFM=;
	h=To:Subject:From:Message-Id:Date; b=mgiOq4Ixa9ugb9+/awbWFRwJtawV062dSuTfa9UQz0tCZgfLU54ux0lfg2C6mBq94XBDKLtJWwZ2vKDhNn/TtX9DiBpGHXT6urfDxPjBf8uTi2bgLJ3U14Jdq1+kS/atIHrstOQ1CNlPsNtg3+us3z6zE2GkpviPRhhlStxgR6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXhOWaAf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXhOWaAf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD06AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770288833;
	bh=Kl/Phrd7A7bX5oV+bL1YULjYrEP730AherB9tq//fFM=;
	h=To:Subject:From:Date:From;
	b=BXhOWaAfh/QhqMuOdQ0BX9NaS8cDB8bg1No9OItlUcsHxR+d1e0jLz4eiqQeist3z
	 EPx2BvXRIpZx5fPFYIPDaRSkCk1KU28Xv1mzGEm/bCzCSn3vDsUuwMQaNLKLkaQeC/
	 i3sZwASusdbiCxULfTV5449Snhh7S25DrLmSTXt2IWq2Ghvov9pcGIVkKqCvqxYTZ7
	 mZmdV2/WLdKnRMQi9ab2FpWhJ5HKyEAWZwtlX15T1kmVTskJB8/KMxAuEp/GiLIOF2
	 ugZc21i8n5gXNNgcrVptJCWCNJwVvZ8ikWQ1rDYWHeu6pqbFORuhvfjfQSKykQofKs
	 slHMbFWJ/ZUjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9489AEC1E9A
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177028883360.7731.1278124221929936794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65805d472cc96005e11c1e9bfedf52243e7cff70a0ab9202eefe025384ea1180
Date: Thu, 05 Feb 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770288833
