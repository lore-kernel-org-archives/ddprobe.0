Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B4D14F9FB
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773532494; cv=none; b=rULkajExzoH/aML5y1mLLWBIjfm//NRaEmVb1K8+KLy8CopHTXEuxKVeJWRVw2EptUlnCsuZOIlBqGVCzd+cfuJv1rtKTYkFgZ5t7HGt8Y4dURpvdQOnOiEcoPkMYtX2gdfdfmmZSfeBSC0kghjRXaP9EBFyFRQ5QaLhWrZW97U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773532494; c=relaxed/simple;
	bh=wNZaWDM6yNZDQpUNn4K/z/jnuXeDrX66mx6NGh+IpfE=;
	h=To:Subject:From:Message-Id:Date; b=KWGWxutvAMSN6s34hBRGWCPhSq9Yrczmvkxja5DNR5otTk8F3hakMiLcU6aJAt0WeasjS74tVJIWuUB8t1+HsKZ8dJOzxjLzpLuICOEQ9unuDb9zdyyYWj7BA89+A1OIxMZBYPkIhr+4CK8o4ihEezk45fZ03ABm8vvgEpQ+rtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kRsgY/oV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kRsgY/oV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27B1C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773532493;
	bh=wNZaWDM6yNZDQpUNn4K/z/jnuXeDrX66mx6NGh+IpfE=;
	h=To:Subject:From:Date:From;
	b=kRsgY/oVqN27YouMozbN9VkMgrB1vmnXaLxxSMYNgm6PujOp8pxOXmSFIi8/1VEET
	 inD8P+iCtMQoIDz5Brk/rboVAHtj48zirrdxiZzn/UFRCdRPDIaOxTnEZC39fVYHIc
	 Cjl1VAU4Oam79h27kf0+SIuuO4UDHLfyN8XdCr/V9J0DUAU88Y3fSLOSendxLVWXxA
	 l6sNz1K0MPR0yhEkulQP4nA8BLLkMhOeh9Y/y0fKn8EhvSHbQM+JBBzRRqDQ2ppmQt
	 uD1JJrIkfW7bpx2oegwTP361aDLAcD7+d9jGYRdFnVzRGhDq5NxMHgq5AzIae6oEGy
	 48HDNCEN8tISw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD8310854AA
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177353249358.28753.2379209408499417412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e20baf56dad6f18f53698a7b47455ae7a67b2feff63aec7d4d1da2667a340131
Date: Sat, 14 Mar 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773532493
