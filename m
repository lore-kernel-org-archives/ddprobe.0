Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BAA73B7B84
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 19:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781898394; cv=none; b=F4LpIbFmg2Tnlp7PpvfMJSnfD/QCp/g/LRM08jCqbykB0kVvr4U1ImH+5K5Fnpgg+G0D9FemQDyVIZI2tSz3DDuwH7cIBQ3h85y9CEx2YFuns71cUSYUa9sFLpBt514Pr6tLeTAkzc2aOK+5wM3/HFGTt56LGh7dLlJhzK7K/uQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781898394; c=relaxed/simple;
	bh=eJohFdJ24DL9Ehh/5xZGYHc6X7TTg26pH9HFf7+Ni8U=;
	h=To:Subject:From:Message-Id:Date; b=up5LenaRBi9Mv4g2ip973JEmsZOs/wq+9pXkIOia+yjH9h9QNe5k71lH4CTHvQ9P7+tLbPgIdHetBIXit2pav1//hSOR+VsSuGGmv03wGsdXvrsUZN/EZ/akw17j7UnZ/HAgcPpwlmSyNT+6MMqhwaJHeNvR4Y4HB0PXSzkZmTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khy5FA9n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khy5FA9n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D21D0C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 19:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781898393;
	bh=eJohFdJ24DL9Ehh/5xZGYHc6X7TTg26pH9HFf7+Ni8U=;
	h=To:Subject:From:Date:From;
	b=khy5FA9nbk5+IKWus6hTMPto+Y31H4KQGV2FiaIxzG4i05QjhZ7X0z2SuMZ1Dh5KS
	 HuDYw3nWXh+LhC4S1vaPmCPuR9SM/z+JCpE6MNeF7hCZbomczHD/RdCnNGb6HRvZtP
	 tbiWMvkmJgGzsyLsjqnRsODS32Vx0IpJJ/YUEjvxIMpPf0dY2SRlJL3jJPf6GA6D32
	 Ken6ubE8NTtYDgqd+hryYdWPFbvR3QaKyeoy47kDCb8pANRuETaEmUQ7QJegMbWhRY
	 y3T75zHcvxYAjV2tEr+boEet7axeQaOd4j+QGq2gqtOwiCXAiqHtxNb3uk78U1K3+y
	 q3YnkNuEyFdqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B22C5CD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 19:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178189839369.16649.5703838177725835367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eba25eb607f7a2b023727b70aee6a733c3479926e78d76797ba0f232b4c41f5a
Date: Fri, 19 Jun 2026 19:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781898393
