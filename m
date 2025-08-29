Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B5079CD
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756493994; cv=none; b=h5kJI51yHi7hpp8clP6mZOgTFBNzGYaHBilqeBJOPHbyNO+FJzXzqI+sEYwTxLOtUU3NI/mSbu89XluIjQkRiOfc67NuA+Z+OeeenYZD6jlEQj87ISlZWpIgPovOJFXIl3mz7TdQGVZoL8szI1N1kXBxy7cRjwGDC3MefLShJmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756493994; c=relaxed/simple;
	bh=cUWI7TdHlhjnUKLuqzF7j7RQunVfTtw2ttX6bvzAyD8=;
	h=To:Subject:From:Message-Id:Date; b=dPl1F2w9AtySejdYGB6sqWFW5eFxIsmnbrCASSfXtQXDldAjIQAx8+Ls85Jgg7hiYw4uWd7xW5rPLYzlVc4D16kHFitEu1GwGvBKsr8PxZqOQRPKiUT3pyaVH4e38cKBI7+A9SBhjYsPGKS8DA+rNnykgsQ56NJVEmT8E+lKvoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KfQvLFWm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KfQvLFWm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FDBC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756493993;
	bh=cUWI7TdHlhjnUKLuqzF7j7RQunVfTtw2ttX6bvzAyD8=;
	h=To:Subject:From:Date:From;
	b=KfQvLFWm3aQcHNSpco7f6wpdfOL0YE9tJ+4yP3Mmp5Xu0YnTr8xP1TbUIEaFYnJyx
	 Es4tEkcoLmlaaRiZhoJNGJ29I5GG1IoCyFANioYDVtc6D3p/CLsNxMZx+oWTtj3LFJ
	 RPxODu8J0OvCDM59s4sUX3UImMdAGhTYpQG1MGTcnVeroc5E4QJs5Oe8AsA+qxV9j+
	 Kweq3QPutF5aAL+es/m1sciZPgE6zx2Z1Q1MZkjbPRZJL5C8zcL7K8nYx+sfMhuZO0
	 JrDudHZbqnDbcdTx58M6XGMKUzq1d5jq9Zy116BqVN0PASqrafwlGG1E71FQyn8kCQ
	 h2EsQuxR5xzUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4B7CA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175649399357.858.8602736811709720233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6a8ea83d8c45383d94e2605ca2f4997616dafe28d00cf55263c936df572fa1b
Date: Fri, 29 Aug 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756493993
