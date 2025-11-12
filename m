Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC9329AAF8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762912794; cv=none; b=L9tVUR1rdS4ySZIPy2nLL2D19h97A8kV/gkVbAnRrXaJaaXj/Qy+kAakvMe0/cboX/nctxpROvXl4GS/ratxiE4/8W2czIVo9s7NLqT3599J78HsTWlTrXEl75Dtld8ixG7v+14u0dG0T46OdwgPZGOunD7tD2qcdopEIXR/uHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762912794; c=relaxed/simple;
	bh=/XxW+BVQ2dg58Oxiiv7iAfH5v89A/8DH4SOJqpQefgI=;
	h=To:Subject:From:Message-Id:Date; b=ZE+e+gEJ9f/zRVLns5ejAG2w9gtti+hVBjWh/d3Sg1wXuQ4vN4qzYXBy8xBVouxxn32hm+NACiXXfE89T1iImmxlxTqpQ4ZdIGLFWDOTyk7TvgrmkCskqz2sq+grsfPNRD0OIXcVjYkWNmRrRbGQb25D4VxZVFXrnrjfE7kpFRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N8gqn7c3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N8gqn7c3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B58C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762912793;
	bh=/XxW+BVQ2dg58Oxiiv7iAfH5v89A/8DH4SOJqpQefgI=;
	h=To:Subject:From:Date:From;
	b=N8gqn7c3PL4lwhMVbu6lksTzC7qQmzS7lSTQH6LkteaVzlZdVUgngPgHKXm9CmysV
	 dFcIBISuqp4tdQsF5R1KXx6otoEYWEOTlxRe5TW+4EJJ6ddtkLxSw5druVDzDlRue+
	 qJ97LWFxHQbpZjqHe2jTKfyKT7NkB83V/vEhLJB+oew0WE5Qb66gyvQ/VgSk/fRRZ2
	 BI4fTsUxMMaFqpcCVoMAvdtu/WZR/e+G5XcLQdq7ycnSn0rmRJEp1h7QFQFrTKnC/G
	 jUERoopHAOO8Z9rHZ0mzFxMZCJLNFP/xGGwemC8doKy8xAZSKZL+Ak3/5jVGpjHwxz
	 HeSvneo3jIquA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967B3CCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176291279360.19724.4779421726269773793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2752c2372878318c2749c3263e2923228e115f5b98131ba0a964143d078c946
Date: Wed, 12 Nov 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762912793
