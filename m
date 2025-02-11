Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFC7826BD92
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 04:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739247415; cv=none; b=QxPk43OdnLyKPPlxCHJ2/HPVS3icehaE5Ykk8iTOOon2fp3jQP6KdYr9DVKUuneujjKi3kDMXTV/6GVmNqgcJoHsVe8EUqmGPfLX8VkRk+auz+YMGnXacJwpWRSykT4oatRiKkir6soFjylk0tWTf6niTaj1Z1VPAbn32QhvF6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739247415; c=relaxed/simple;
	bh=2tSoh+t/3jvVBvBasEIxxixQdUcH+Ok+L5sumUgQCos=;
	h=To:Subject:From:Message-Id:Date; b=tPPWOpkwyh0/+bp+jnee/cTSHxVPOB9whr1ka4dg9qyH4ypWrVtDHo3xLxmKl86JDQGLjX69n8XghG9ZrfULRNGQR7/MmQaAVVM2xEEmgxXMtwAUsNt6ROnRfB4KqFyZ8oXTm4zZwjbjdExIMk5gIUc651N5+tRCKRlPwxSU64Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oRuU/aeD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oRuU/aeD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 37E4FC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 04:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739247414;
	bh=2tSoh+t/3jvVBvBasEIxxixQdUcH+Ok+L5sumUgQCos=;
	h=To:Subject:From:Date:From;
	b=oRuU/aeDg2ikSm69pZYUvyWiZ4A+RIQ7+PEbw7Xak4qgR/a3sI838fbXgfS/v6sga
	 9DR51h2KR0YX4EKJZsLNcr4qpl7uKtPS6dqcQHSIWLazZsWtIbFXubqV/Jy9e1NBcl
	 RmwEz2IzLXEiv0kIECEhLfyFSt6bysZsIpn+1E2igCjDYSQ480o8gm0ib4fFNHrJKl
	 YRVANlFy6kG2pU9MGuOGlnFiJ/xoRzKKrzW2JuUAoRWHrdZqeVFPmoI1DqGp3Drgfo
	 1tStKFcXOAjzcglDWWj5ZIbtScXjyoXH4pQEld+71D+OauHx98DgzNZpQ1j2Xkfo8P
	 lvVWj6hPBUqnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EBF7CC0219E
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 04:16:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173924741385.3060.17033567133807501677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f4689a9ac01fe324faea24ad3abd67ba17901a91debedcda603180db345a718
Date: Tue, 11 Feb 2025 04:16:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739247413
