Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0323546F5
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785476434; cv=none; b=NSf/CYAXotCXQrbWsHPWQa7pDKMdEVmz2Eo+hjhJClkecbHQHu31YYqb2r1ylgq9d2tBk3ZE++R6V6Z93rONGsk3+ScgdqOB7BvWcPh3pT11Xg4XHxdSb2c2I3Vb/MBBjwKrnIwlF5t3lwRVRdtV8Jchu6/vT1LBWVq3TDm7k9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785476434; c=relaxed/simple;
	bh=eeXdivEAk4bGyKryhJBIzqJYefYtEVNyfI2QIu1AAUE=;
	h=To:Subject:From:Message-Id:Date; b=bkBesmxt+w84HV+f07CSh86cTKa5Ov1nzB4AMeW3kh0oj77ERhUvUqe0vTZfluouPik1qF4Xa8oH9ptIbvZcnmJvTPPuMcHUWKBQO8GsLakxOCXXYGiolpZsPu2mYwJQJAJXTdT/Y9wUp9tqaIiSPK4T7PTEN/b2RHYjWOh8YLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RJYiYCRo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJYiYCRo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF5AC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785476433;
	bh=eeXdivEAk4bGyKryhJBIzqJYefYtEVNyfI2QIu1AAUE=;
	h=To:Subject:From:Date:From;
	b=RJYiYCRoldWUBZOOr9UfCaxumRRRTFpui0sL082PGuv+LGN3gelwzbo+NOiEt5fAD
	 PQ9Q+xg+b6SlEf/FpVpK9ykvNTTwt0Akn1EoaYm6tfOdRxSzsRhTIIt7NtrwhxuCRX
	 gjtUIqMeNrZ3wq5bqn46vVZ/mE/DK3DT331oFvFgfaTZwYI19ub8k/AUkgs063tJXr
	 Grk+5Fp7JEjqYr/Vw0VdYz05tvcWuka85VoARm8upskx0XF8xoU0GV4p34atSP45XT
	 b1Sh5Px9qE29pR12/uVSfnOLHFH2mtDokfFyB/ecrf9GbA9mr153F7eA6bgWaiHQI3
	 zlvzB2y2qgikA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B85C5516D
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178547643368.27395.7136691652379193950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbad82ca0510e9897c35cbd4712baa7d8ba136675a75b93fdf7fdacaa598b734
Date: Fri, 31 Jul 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785476433
