Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61710349B01
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 17:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763488314; cv=none; b=hsupSiG408Qx7YgzqwJyyiGQQjMjZxpKDKdRfwRfWX28BE5Yh7VWy5K2jMfoEY+ozPQVg47uKc3yzpY0ephKWwz4IGjpavD+6HuTgm9Wd2xyEajixUfTgdmpgbKXBXpE+cUCDIO+ThvqVHD3NFaYxkElCsL13zbZRxlpCH+xCBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763488314; c=relaxed/simple;
	bh=GLrLe0VE4fy6MY9kENQFF7NFO6TNNn3w1CIjH3WgLqg=;
	h=To:Subject:From:Message-Id:Date; b=f7PLL9oRp1JVpzYvZYK9jQZcOJulO9UR1xgzTt8eWF9CCZvQNa9e+jLzwAF0EAvcYe9G/i5nSMxi7YSgIg8WSV0IpfWfgzqWMiCbddZnQWA+bdTVFwMGkAmu4SnVhCWBIKkz73nLCsVRYvIOOejH8SlOcOPR177qG4iJ2BCmJuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gfv+bo4o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gfv+bo4o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB03EC19424
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 17:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763488313;
	bh=GLrLe0VE4fy6MY9kENQFF7NFO6TNNn3w1CIjH3WgLqg=;
	h=To:Subject:From:Date:From;
	b=Gfv+bo4oW/AaTphhWVl83y8blbfb/m81vRIp3Tebpx7hpyLFMi2sw/HX2YyRnr21g
	 Y5W8nKjRGNpvA7vmVfa2RigKURkQ/XgoHVU1YtUKafki9NviZBXMI9nntNqY6cuplJ
	 HpNppjkUcdxigq8x/ixryR0Xq+dbR4AAbqeR9LQAE0Cfbfu/3V4qukMrA0HHX5FEHB
	 sKr6zX1VM+WCjvJFpSySk2XjfCNl7vvVdLq7pO784nsawSi82pGzxUqpJxViyZ8jge
	 vMyoT8R3eaH45nOvJflU/LQmfEzNpDDyv8MP7Z0CzVtee+lkiLvxnqXZtlf/bYv0jz
	 /QGsLBEDPZN1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916E3CEE344
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 17:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176348831358.17735.10216048856008447029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 628ebeac3954d42bf920798ea503b217622b360d9e08d159e77f0635156fadbf
Date: Tue, 18 Nov 2025 17:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763488313
