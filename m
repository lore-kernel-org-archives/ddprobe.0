Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ADB730DED4
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767606835; cv=none; b=sWEK7gQ/47lo4C1H1OyFKW2upAfu85ZKxcHUD7FTiLJnxT5zi4u7whoSJixWLsa1FbOqF1dZY69KW+YR0h9/IAiG02c9VAthe3M25W+jCWSyBxXr1tcVxlHnvYaNZfrkNqqY1Ej2aFxQ1xqLwWN7FitLngAYXQgqT7FfI/3yKmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767606835; c=relaxed/simple;
	bh=4325dixjllOtoiG14JNDFkqpNe5SGVfovMRPTzd7Gqw=;
	h=To:Subject:From:Message-Id:Date; b=SZtTgdyyz9UAJlLW/1a5seDQzR996YQfCdeXq3e8iyhinZQ1aO17hGILChTiW8zwHb1tOBDnNpZcHUBaNEZbqBY1MXdDSxcpDxI3SV6Pwh2NlCzsgXscEUMoZ5bWnN/xUyYumFAJFWcmfUxIKjLKgjGfeDzIt9eNvtIDwW1/N58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o5YIYtZ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5YIYtZ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58E7C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767606833;
	bh=4325dixjllOtoiG14JNDFkqpNe5SGVfovMRPTzd7Gqw=;
	h=To:Subject:From:Date:From;
	b=o5YIYtZ0NiY6RrZJfUHf97rtCkgK9KtlNp1uGYFaXBsxvERp2K8NgHUEj1GndVI1O
	 K5pDHg0QLyWMmqgee39CMvHSBjcQ2DZ8rY28JaYXERyMgFwjNdXIaIaDa+MIP7Cfzp
	 HlIx+YPdLPVaKLR7bZ5I3ypYjh1cim9rVMMYa5CurgW+EeaYTVcN2xI1T7zlpBPoIG
	 JOyAxQFQnfng5U433Y0lhECmvkaCDCqkZ2b2Y9JYqZt4GAKDuQgYdB25emw0wH7y0k
	 pd8kXkJJJVPf1S0rxNeSqBsT6iwhw91TM4MkWeXuWRbOQxyMJ+z3XYfXqeD1LUW6D6
	 9rSZglIQBZ0YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95679C2A07B
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176760683360.31131.4506645164235147479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e169551621a819cc93406e8b9c73de43e33df755a69ab6103fe4a44d963f1130
Date: Mon, 05 Jan 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767606833
