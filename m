Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415FE1FAA
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747412394; cv=none; b=I7Rct8jqjzRKrkuRK6BUbt3Vya/RSWRvdXv4goNF3dmOU0WiFF22rIlCUKVjQD3A53Qg3esogS5BpqAnFWnMb3rMPULLMorKNkm2419TYa6zOdo3vnrowPR2d5STLWp/arZnhgL83RBsB+iV6AVNOfQVO7akrTQQxfWe1Zz25pM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747412394; c=relaxed/simple;
	bh=fAMB3wHE91OyrCmulckRALDXPYP4QIUhS7M2n0t9phM=;
	h=To:Subject:From:Message-Id:Date; b=OnRl6yqKPa1RgTXhDHggsSsCs8nAz9ipgpIraate+WqSye7ixeGcPH5XwDcFuWH6mtKqchyB8ff5J65Hmj/JWKZqwXEcrP9nIAzcungB4nk3TnEHFpciYR4a2VEPoGzpXMA2zW/6HQH+OLNxKNb97Xg8yFKjyX4SRZZUN6tIMFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttOUB6AG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttOUB6AG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CF2C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747412393;
	bh=fAMB3wHE91OyrCmulckRALDXPYP4QIUhS7M2n0t9phM=;
	h=To:Subject:From:Date:From;
	b=ttOUB6AG8FH6LYBAAec4luc4R4MIeQ2/RaXW7wsD2xTGcBx/Kc7bDiMWkZKvQ0o4a
	 HKZvvbFNhSVdrDp9zkXb+5/F8OhORHIyFk7MBXe6URs4SFf9FUJUeVv/RVQgPjSU0u
	 N7T94HfZVQcDFWlxwmT/fY0pYVo/TM+2Qauc4Ji0kP4xmNauHqdf8ZonYDifY/2JfQ
	 cOjHPkfca5Z4qaJoCR4bdrr1GOO5VddXjLbAGDDE1l7Jj3mxFQ2NIrSUp9kqlLpL5m
	 /xwzPAdWYVzGQBMiFOjWbsIGUvWgXa6IBsKZneg3rri2nximTFS+/7iVCyYIwUPe98
	 JZKl4R1W0QpyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F02C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174741239359.22241.11890422855026521216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44aa143db78a5f875ad04b630a7080d952ddb595b70ad2eea15e885815271b82
Date: Fri, 16 May 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747412393
