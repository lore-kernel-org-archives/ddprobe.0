Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2322F202987
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744868394; cv=none; b=crkt8IAe1OKo9bbBvsexUU3IjvaAufle5fNQG82GII2oegM0o/Ig6EE1jMOywRz4Mq02bWI1J92tS1MFATwf8p+w3ZvXl/zOJwM6tq8O5qRpVYvr33Hvc5rTOC1P17o10gWizKEtCYg9alGOYZUBGDKtNng+3vUSPA2gWgu+iO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744868394; c=relaxed/simple;
	bh=Ci2S+xseGOZPwdA+q5LhwC0t6+/kNoRhPW3ZZOgrr18=;
	h=To:Subject:From:Message-Id:Date; b=p0AEEw1M2Jpe0AhkMem852cd9WPQ8OM8C+q0d4lXJhXHu7qhupzrrg+NI6zwzPuBxnpJRmF9uolo0aO4tVZ4GShXDnepvF4tXE7MLTgNyDHIInB5KQpsZS3EUKfkk+JRYOn/u1tY3dSMcfCk7WPWskXmSijrOfJpb+xtIMXZZDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJMWV72N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJMWV72N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73D3C4AF0B
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744868393;
	bh=Ci2S+xseGOZPwdA+q5LhwC0t6+/kNoRhPW3ZZOgrr18=;
	h=To:Subject:From:Date:From;
	b=oJMWV72NnddT9+jdewZDyCymW3y3lwmauffgBATnlwdkicpkqkG+KfFzOdC5OavII
	 jx7Z7SXmpnBmSBSAllJTvi3K2eTNXaTZ0mNdqPhj0YQZIwm+53uuReFSBay0gAq1Vn
	 bikvPLQIGrFuuhkVN9FLyCLM6q0ZURaLXl9T95kv0hEq8vYBVK4KfvAtSKi/FilhFH
	 XGcaJno4YE7cZ4d5MKy1LNECvCmBSq+ewIUAR3QUK4urIinq3mIxs/CuL8Fh6XG2aj
	 fw3Ah4VuJI6twCk5FA0IYpzXmFFWTYDzynypgUQCuKfjXmhdt4phGi7w5ellxLAMMl
	 NQQwMqdsIq8IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965A7C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174486839360.21209.9588332479399093708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c4fec40dfefc1b785fbed492f5f03c61cbaa360cf93384f8ec1b7839577c678
Date: Thu, 17 Apr 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744868393
