Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C575C2D5C64
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751629793; cv=none; b=NvdvOHDOZIwx0J/IbqwTH5hqbesSXNY8FkbelntJTOa5E18PG16ouUGYSjrcZn57TUMfGEsdRn8WKqfnDRudyZkRnbdYuy8+iA0I9h0MzWJ2PMckhJovPBqgVW+okOEp6nJs+OVh+B/ScJ7O8hLkJzOpIdjtYwFJRTT0LWqehm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751629793; c=relaxed/simple;
	bh=X0UZBd6K0q8OqJuJ/V/jJBb5ObB1z5OU2ZKudHB3DvA=;
	h=To:Subject:From:Message-Id:Date; b=jaXgohFyh5b+BXikSrHhhuCKqqYTVm3MyGJ0qqUdobCyxXj/QsTUfEGzfnyS6vImgMvUTjMiGl6IPDIZxWXa2p52ZCvxfYqaJtoU43mJvC8uRRz97i7Rm33nwYjUIlZm0oHtncti7suI4TINTapm1HLbpCZ8S1wL8crPDx0oh0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k1+Yeieu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k1+Yeieu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B345C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751629793;
	bh=X0UZBd6K0q8OqJuJ/V/jJBb5ObB1z5OU2ZKudHB3DvA=;
	h=To:Subject:From:Date:From;
	b=k1+Yeieu5YhviXZwLmGmtu+t1CV6DctyBcIelR4dB2RkYUja6s1A89iusqtxjdYKF
	 vfFnYBWNG8NbrCt275Y9M0gj11aPMZV45wcqvnA8NYbbizh4gcV8DCccfWgOTS2/oc
	 Hppx+pAU/LhPzgdtzi4sx3l+moBj0IQ7BDUEBa1NG8z4PTwEtU+cc20jqzUjne2Dg9
	 TTW+C6wsNUvTQ6FilgV2i8faxAnm4C0dZ4+lx5gKg3l6K+ZP59UENAKbHjmVRe5O2N
	 CXudeeQK3uEKLAXzJZxPbgi3BJ0layrAJRwAgkOyYTLA33Uw+8/lTPRvHAeU40RVmx
	 kkbSoh6M8f+EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D77BC83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175162979357.17688.584498529255612586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 466da58424729dc9fc239c8399475f0953217c1977a983027d449b6f0d33ce5b
Date: Fri, 04 Jul 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751629793
