Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3548C27703
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 20:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779566554; cv=none; b=dNqTOSYzJK+CdA/RGlyyg8IXvittlkGQAQ5C3lAMmRCAw+a18w0MjkqWO5RbM6mhK7ocC7/LlCK72rF9wjyewqZB02fs2gAIIp6uv7OE4vcbUIkkbiIBAE/JdbG08C3mGmM5/uwmJmr0ak/9IDlpqRA9yPQDXKloyWtXPu1fY2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779566554; c=relaxed/simple;
	bh=QEXzhgm5Em+r6S11Y3KvBec61jRGyuoDwO1pDAaltFA=;
	h=To:Subject:From:Message-Id:Date; b=pD7MrWmJBydUbMm6kiQaFNeTqJ+AiFT+2GFxurNYjC/rlMDvGXEa/GmGKy0dj6QTLdoWWewBZu8CCwGDI3d+mBZc/220rphGLb8bCyT4x3eR1r3/YNJmqdSoEWaUWTfa5kKnzSYGVcThLlAD8jg0htJFikbIjb45ZdfF4SD9kMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRuXEt7Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRuXEt7Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C61F1C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 20:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779566553;
	bh=QEXzhgm5Em+r6S11Y3KvBec61jRGyuoDwO1pDAaltFA=;
	h=To:Subject:From:Date:From;
	b=jRuXEt7YQc8CofE/CUw+m91cI2RhMxqetxR5etMAkvhtLo8vcQV3qX6tq1tf3QJQ5
	 F8Oie8c74KttoMN1C057dCH/XvAIBguXilEauZRngg1qI6HLUytlGfXqnJznhxrrg2
	 pv2hGkrtsGsGfg9sgDyYvmCPpN0tTVpxuPijsuQvh/K4q3WUhvrXXbKnQ9wxaKGUxS
	 9maQcVYDZlxvQ1WSvS2iAwgrc3eN0f7WX1ot3UIS1szAfx4t94tjnT89V4buE4FSjg
	 egXbnK6f3AiJYQCUAU/y4cXBjuVqUtKdGnbVUaru0DmO0LZoukIzm/1KehWr6ezgZX
	 psEyPbLZbPusA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FFFCD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 20:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177956655368.26286.3371157956155485983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 980df76f22b3ddc536fd57a53ec3edf45c54a28b63db3f6caa0fe4939efe32c4
Date: Sat, 23 May 2026 20:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779566553
