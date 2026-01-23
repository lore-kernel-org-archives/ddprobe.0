Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BEE218AAD
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769192034; cv=none; b=h9UOlSa2ovaKYAUv0xdwujIszGG0SckozhRXYgN4zBCMlSnuqfxBoNpx0lhe81KkKA4DcygOYO8YSm4lSa2AZrMNDP/BPFN8R2qZkEBSbhodVTJFXChgsPQ1PcH/uha8ZZZw5hGruWBbYHmsZDfGuUfNpywCQCVNScMpRj56KAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769192034; c=relaxed/simple;
	bh=xQlkpYHs5Dq7JaiUv8wWSXDQFVxymQx/nnEbo/dnjmM=;
	h=To:Subject:From:Message-Id:Date; b=UXGmqtLybw88Sz6VNna18T8QXU97vfcIPmOE/Y4aBLZwhHgyq2kNr1VRho+F7oibxaSBb919K79oMcCVfmAreYyk0xkgqYe5m1quel7rNoxwsWqYAQfJeqpnFpk+JYEI+hr79Kb+3lFRyjsq9dGiT7se2nVkLEZddcVF/t1O3rI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5q6rY3K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5q6rY3K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1711C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769192033;
	bh=xQlkpYHs5Dq7JaiUv8wWSXDQFVxymQx/nnEbo/dnjmM=;
	h=To:Subject:From:Date:From;
	b=T5q6rY3KkEESH6MKRG8kKsLtQ3DccA42OePy5FJD8xKVdptKjmZjdGnPjUM3vt63x
	 L2d6KUxdQp+9OKA+vawKUokOa1kw265q60Vy1BKenMeNPIJCpYEIGU0X0U6wxiww6a
	 a4g3jbTrX6QFCilc3f7Ndm7DEwHttqyj7Mr+O0psxRn9hWoZQ9Cwx1F8+pOnS9jczv
	 WRk0KaqWhM1qumg6Bf7UEanTFvBLT5nua+jdaGiCS1SO0LlzDz+HLdyUZcdDoHHL/y
	 8LfaY0fU/m3leoALp1b0QbkExj4h/dtlEvH5B5J/GERBSX1ZP3ZlPmknc4q06Qkvkr
	 egeyliWI0Pmgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B1BD778AB
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176919203358.2380.16565759482268548459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80a901c005a7913a6aca3c575ef40e0b7443aadf98e9a911c7121118099fb9ff
Date: Fri, 23 Jan 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769192033
