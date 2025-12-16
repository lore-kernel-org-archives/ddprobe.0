Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF06B2FB632
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765885433; cv=none; b=G0yM+fDG5tTMgOomFMlN0A89ObcPbxcvaEEfdV3VyrYgxZisXZQoEtLONeMME6a2tdeP7rUrnokntAHRnisoMR/3NUBQgecv/a6Iq2mKaUVXOz2XngDpdDqmokflO3A+RHC9Hgy8P4tUL5YGkigEfNGMTWZY45nCip2qjR/cvEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765885433; c=relaxed/simple;
	bh=OAEU3tNgj+T0g0XUdCYGZhm8sdUssdLKcCJmVtgYL5Q=;
	h=To:Subject:From:Message-Id:Date; b=ahFUC4/FNJOvYJ/Od4asJYMLL+aKEvMMKupPJrkSgCBWDl8qnpOWTvg7mVcxOMyQoYvwulXJjib1gswBVN6HM0ydzjLEJBJWcVgmG92y+R+JNpdLkkidU/ngZHL8CAIl0GJ0sxgFuhaUiaYZB8Z1hKzEm5N/SYsvFzldJJ9Xid8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A9CwgLzh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A9CwgLzh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FB3C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765885433;
	bh=OAEU3tNgj+T0g0XUdCYGZhm8sdUssdLKcCJmVtgYL5Q=;
	h=To:Subject:From:Date:From;
	b=A9CwgLzhvnGNWw7NjzLRS9XF9XigBUF6VaKqEvLij8tSnimOTnuRQmRmuIa203w5G
	 TPmV4hnVfsBqgGYr4ro/v13B9AM/kGvwMfWe9kyyYQUDqplHH/hfqAcInEvqx11nwp
	 jWWj1r3+VekeddW4U8rIwKVcKuNWHMDeMQthTSZ1ViOJdbL093IskDsWS/DwswKhUF
	 Myr3m1AewxZ70pQyvA757oGQlWoCB3BSkmevZqkcNYaujJo89pQGKb6A1GFEQ+hkW+
	 jVUXp3JVK+vhY+QETjMgbVFyHXLJqivwkME7+ff4SZQbIEQB7QYdBE7hxk3ijiGyeu
	 bg6zCPZaCO3ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F1ED5E136
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176588543358.9226.277526458457041692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd64bf716bd287f29393bec760620b00672e0a7ab34d515a2f915cb2b88c47c8
Date: Tue, 16 Dec 2025 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765885433
