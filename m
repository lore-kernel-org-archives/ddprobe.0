Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6103C9885
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 08:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782201994; cv=none; b=U4etzt1ge6+1yq9rJhiKRLUt46H4qRHw8WWry/SOukyD8MJnTn2o556lFczjr2XiKzliXwF4WCHY8zjwl69g1EQV8iWuWZ5veXcbIKvmjTgVms+aIE4MJRkfNT4+1/LnQ8ftTAo5c9/wwKtcyJdyENH731pCrJsWqFMOC8BFL5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782201994; c=relaxed/simple;
	bh=v9aCUd4K6p8VZP3NIVXn2zYbyjv+8kATOxJDy9xB4GA=;
	h=To:Subject:From:Message-Id:Date; b=W6YSfMjGk8zIZgeuWBhOoFnmzYAq4mH3a8cj3pUzxeqTgiEVdxb8KIxNV/pOOSbNkamwF/XDZ6MAGvrBeilsnj6K0z3y5qE4sd4ftbI5bo5hlCF2O1PMQ3EnbI0/qbe0ZvjbPtSLsHusi/3tt+gJSN5EqFgIJp/UCpGEONQ07lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQf7gIDE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQf7gIDE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0481C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 08:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782201993;
	bh=v9aCUd4K6p8VZP3NIVXn2zYbyjv+8kATOxJDy9xB4GA=;
	h=To:Subject:From:Date:From;
	b=AQf7gIDEf+jQve/0NNBVGfuYVLv9pi+NGKPE9KUCsoPDQiI3JYYE6WdCHoL3m+c6k
	 8BXl0v6qHt4s+TZxveouDjU/y6GWMqAz0WCgSqfRtbMSev5u1mivIbpIH2rpkamNP3
	 q5tyudB94R/NCmoMpWk0VxaQOuKEA6oDVRX0zlLszQGi2DRtky3AzUCfGnIlfKAxVd
	 OKk8I87FGugGXPhhEVMv6Qo9NwEiJHAXwJfYJC14AMxTqqlt6Iaz+NS7r9HYoxE+cI
	 nAh7Smph+k0MLy3YWpftNP3mS439WbrFyoKHqvrWpArzb9DmLSP+Y2blTukecSbSxr
	 rSSA09Xevx80A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB614CDB470
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 08:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178220199369.7041.8325326501106669328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a8679047c166b559efcc4cc75b11e751c3f39db8e784368a9c4a4c840d128ef
Date: Tue, 23 Jun 2026 08:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782201993
