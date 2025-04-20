Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C13B640
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745165994; cv=none; b=YoBbbxtQTQQPCLzpj3VfBuhkEThlsVSTpfac8RMRdSw/wn2ipJwwcw8bckIyMwgfgQRnqH4s1oKAH8cPFfIAAuygpC6905swpW1vhW5UrRXVa86bP9XjbID0x4QDoKR1/rLu5mtZrfyJUJRL5CsgmTiu+dTZd6mhDtesR2l0Vk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745165994; c=relaxed/simple;
	bh=SMueMARrVUMGzN0iS8yIipIf8eUteoigWpf+K2wNHog=;
	h=To:Subject:From:Message-Id:Date; b=roh3faXrueTziNsWatBFG+j/F0fy+XVD0pFFy4AJ5OVOtZgSXKReVI29R65TY1jE2tKr3cS/PmUHtTW0i9BnOtSkZoKwKl5mY+xFo53M8/Qv6yPTK5IY3eEP//AC/sScbI9GiSyPLEjdI2xobfJhX0tsWP+FWXv+jZRvxP3eN60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SUpKwvrz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SUpKwvrz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5BC6C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745165993;
	bh=SMueMARrVUMGzN0iS8yIipIf8eUteoigWpf+K2wNHog=;
	h=To:Subject:From:Date:From;
	b=SUpKwvrzhdhjQU6J5ttw3fBo84etRfZOo1qjhwdc+PIuVRSYRajz4UVP8CmkWxste
	 O/v3hQlVA7Se7g3urJ9yG6TRbjz7F8gmdKhw/WAJNiqYZkOh9dWR1wXTvCtP2RDqFH
	 0ZTz5XBQ3R5CxqA0w8d5xDHF9uVrZZbRUqxJcq9BSrfh0G2tldmBkEduw3a/rldO/7
	 uuHVhm976xzg2WbcJuJzo9MmPp6nczqfFUAsFg6BmIiP5y8eVTKpSV+2W8VFbzdAD3
	 Ql4xvQOcen06dXuVpudkDo812ZfbNwzu3GNO3Y6B4WxMCplbK0Mu/uHG11BmxeJLmD
	 c+Is7sujMuduw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF75C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174516599360.9074.13190560477174231991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bbdaf643eb5da5a132040fcf888142d24ab6669ba7a4373065917e10aada2a6
Date: Sun, 20 Apr 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745165993
