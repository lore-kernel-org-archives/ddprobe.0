Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03F0140758C
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 17:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774373694; cv=none; b=f/f5hbJnK+q+Qq+oIg6o22cvrhQDDxAx8bfCtQb29uG6xiWsYTQJh6ZurddAmYZGqF7Xm+3z5q5/0fZinsO13ntMIzs+At5JtDvD2hPX9QJp3VB/BdYwpjSrkXwVicuh5KupzSinOS+eZQcAeCqE16BT/Gtp2WAWU8rf0KZgSoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774373694; c=relaxed/simple;
	bh=ORJ/+lSRGSs9EpFvn2uMaxeNhmgtOJnFOMSsp4rYeno=;
	h=To:Subject:From:Message-Id:Date; b=HuOInsWZZZJtSORXUCzktDiQq0A+V5stMCsuCThf8LrUoyjJfkjAr+fKf07x+czJkGccrWcBAjFzyL9jZkehrCiBREPWhpS8M8ON+mTqnGi/jMC2+LWcNaMKG+4GyRb/hd+z26xDQ/P6qiAPTDPmU0UzxyqGJi83urZq2BbkZ3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=thuWk+pG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="thuWk+pG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9813C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774373693;
	bh=ORJ/+lSRGSs9EpFvn2uMaxeNhmgtOJnFOMSsp4rYeno=;
	h=To:Subject:From:Date:From;
	b=thuWk+pGpAAyhWXjnENlOrQsS96krY0lmkQ/JIIH+fS4WGIcC3KIuo7PFrganM40j
	 jjgWqVWjg+Dfmpe8WuXDdqyO9F3cXDpSQEHnnKbQvHsujTAe5VKu/LUu6/m3h8e6rC
	 TCLisIrfqgz8EZOGze7MbYAB1emwKwgTnVXD/DHT+1PeBAQ5Le1hK7hhS6fFd7JWDB
	 3Q/KwFzFSSp28E6VKKkFRF8Zxjta1/iAwGtl1mU+EeNtR9fQ6N+YwQwmL9zwyqvOD7
	 y0Mvn/HHw5zLBZUXWwN1sV/a86rCBHZ9cq5kRt7aPNrvRNs+WuWNHHMUJ0GgyahIAF
	 DAASLXdouz3mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4AABFEC0EB
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177437369366.17516.4466707839944948408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f1faf917d7b05b182855213d82fd4ecb2be7bff2eb13bf96681fdf4be86c858
Date: Tue, 24 Mar 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774373693
