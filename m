Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D24D2A1C9
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742593195; cv=none; b=jNkZvGb4wxOHYx/ompNhUukldzluU3ngvAW14QiHr9fC5+fkieDFUP8f7ePOpqnUO8Xj4mMxH0FkY/IDB3wxFNqngNHG4EZXpSOSWvtD1FfKhdb09HZg/U1QfT3qFB6q8xDJYQZN6L6x+YaDVtOKeNERuQDRvLLuJVxm/aYJ07Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742593195; c=relaxed/simple;
	bh=/sLBI2H7PujqflcpjBQ7IjFxLPpJhkMZz+AP+e0iH1g=;
	h=To:Subject:From:Message-Id:Date; b=St/XQozPHNT1nfl8yr4dROaQ83Iedz6CWTNRZwnO1m/cLMlFBa2lyc1zNTThLu2729A/UTy1BveHPHVMgirKjG/50KIiELR1jVQ+gXrq43vjNoOGJ+6Na06mvMDggfFMuqV+SiMOVoskHdcQeTYAoEsrP+e9ecl1wgfYkOtEiUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QwjmjmUh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QwjmjmUh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD06C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742593193;
	bh=/sLBI2H7PujqflcpjBQ7IjFxLPpJhkMZz+AP+e0iH1g=;
	h=To:Subject:From:Date:From;
	b=QwjmjmUhRC2h+Df7KpwQFGKBoI8WTlXFY5uMJJkvMkyxsmEaH3+JHMcNRPT+1C0aY
	 wAkj+aZ1dEcc+WdC414RA37MiSBb5IgwdH5q4Ay7Lnq7CDaj5s16HYBNQ6I8Z4rWab
	 R0RtilY3Qer65q9l+YJeihyhnhikKhUQFfg+mfu0Bm1Unr62PEaiPWw17q6NuJrqjg
	 oCjLBkTqMixGuzMUtkhGjts1dR+Fn+MCJ8aj15GyTzmFB+3BrnLm5WDY7rQ82Hi55d
	 4Ct4uqdFVpWX/bhGbCdel27gpp78FYLUAKnqrChjLJeQdkGZqX9wEDUl7pka62wNXq
	 u9c2bH0tgJhhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF183C36002
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174259319370.5501.2265597280498105922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d2fd31d494693651bd35f56716504de8b65847c89c3a3f30651011591387761
Date: Fri, 21 Mar 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742593193
