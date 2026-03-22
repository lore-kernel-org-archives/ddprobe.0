Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD3A1482E8
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774141494; cv=none; b=QpFJJqy1EI6j6/iXygv1E0ey+S+JVP7wjB8c/Zoc7HJradBv2UyvNWjze4woIISK78/TZ5KR8/bab6ppwjtTGvNCrdt42tS+wNc6jF7uMHDhMVWOAu7mPB30OlI3u3Hntb2LIu2eUx29lxT5hiKQKsBzm9F807pjpp2WdIrED1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774141494; c=relaxed/simple;
	bh=ldidHtLXMjzO8HNwWeBN/RMzC6O/nerjF4pMe5kblDc=;
	h=To:Subject:From:Message-Id:Date; b=bSx55WLQUJpJhYjvAmP57tuizZnbjYIwQ4biLCoSkvFy14b8SIfP9IXZq7LqWjzidAE8pqeioNE8yg8Qb3fqoJdtKqsd2pALMaJP8Upmdf+/82CxU3/iiAFpvycrdscvBa5DPilrh5aaW9z9UMuZ1cD7weKY5YQx8PVX/6FWw+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gkB1RkAF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gkB1RkAF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16D8C19421
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774141493;
	bh=ldidHtLXMjzO8HNwWeBN/RMzC6O/nerjF4pMe5kblDc=;
	h=To:Subject:From:Date:From;
	b=gkB1RkAFmhOB5kFtjZuvC3iD3fNrBmxp2t1M4HJn0+aBtVKNGgPH1vluyEQss6S6J
	 VMATbyqA60puHDcRrMsxeLeGzVz/e7yh/wdeTP5JR7bpB8jD5tNPmNHuHoLUr4kXqC
	 lWoWU5DsnOXlaD+YJZ9Yys5IBtlCvDcCg9aaJqUoFJEZpuWJE4/Ed/1nNg0Tso/E2f
	 CNSFTOIs3YqcN6J2n2qdZ/lkNWuNyUx4KdTwnHwTs5xBLvTSetUvMY8lBw4XSMZoBk
	 Pja7gKAQFIai0pP4vHsI8h7TAZyLckhef5+q8LTgGVBPJ0KZR1IMMdsFB4Jf1wHKCB
	 GKBoCkXFHU3ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9123A109448C
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177414149357.15741.14138427682973402510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 328661031eed2a8398652e0542790e331a31d5ecb401a46f363150e350336cd1
Date: Sun, 22 Mar 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774141493
