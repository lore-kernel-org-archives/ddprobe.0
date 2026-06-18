Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDB730EF92
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 21:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781819794; cv=none; b=F5J3kkk8Vwccpz6s9h/C+iVhW5dTam6HQWAu7DgtbLjOBcnKRLXPfv723aClbAd/uYeC5cFVJYnLBwIvVo+f+eRImwtu8DO/FSOkKHfGOMrX0sd+IQfKoOYv0KIZcrYlHt1u1nYi+oD5qjGngsSwDbALxVNOT+H4Vh0RRdvxoCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781819794; c=relaxed/simple;
	bh=8Ffx8k033gCHmpuZB4A2E85D3E6VwGZjwolJvUcaEtg=;
	h=To:Subject:From:Message-Id:Date; b=CpXZBJt59qNDxsGZn7ZVeuz/mkDGm3ghpoaAZMdJcJB7yV8MomFZHuFK4c79htP7wvuExMHCzWXJEyCmUiMRyk1fNfde+apGF1kEfjLNLKDwAwf0D9fz6nYzVrff1mqShu+x8LoMK8li1xMgS+Fi3E0I0TLt9dh++4JVERF8vHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jscZeEXs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jscZeEXs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C719BC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 21:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781819793;
	bh=8Ffx8k033gCHmpuZB4A2E85D3E6VwGZjwolJvUcaEtg=;
	h=To:Subject:From:Date:From;
	b=jscZeEXsc/IXMY2BqvIZqRmp4D8KGW2W4kQFZU4bWp5Rk8AYqLagsVYtTT7s2SmVk
	 dlUOcpimRVfN0Wooxj7rfLs+pvMzZeyL4omjMWwxu83fMQ8lU80XSlN/g6U+rdtEcx
	 BHHXwYA2ED7YQorW50wc4G6NWXATHdsW82UtP9oLJ7QCOH2Rh3yAiQDLHreOsVrO+V
	 vbUEspIgbU/Y/aNYYDUOAw417PE+wU+9sxeyyRFSetiRe9qgJv/yGfEm/bfW4TaHt6
	 Osupa3m+Lp5JoQIbDFZI/CvceiWMETosj8ZZTDnqrpmbM3/4VllM3SfIm8hfrgMdUq
	 smAzgLmRuGZvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8C0CD98F0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 21:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178181979369.12136.15014595857597021899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c4ce6df1b96e77c90492734e4c9a71e5450bbcd408970612a95768a7f409edf
Date: Thu, 18 Jun 2026 21:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781819793
