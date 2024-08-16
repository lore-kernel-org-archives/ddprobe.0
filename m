Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA0519D09F
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723806954; cv=none; b=jQXM+5bJdOCVKurFEQJ0+lJYLrsiMdq/Dyo+s4E7JfjAHN0fgXv8HqShQBRdNqwY7FqMiFSJyoWLjDneRTk9llewo0A6I9qY5CxE0lCIVbINL9wMWksvZPGvGDA4FijT9uVKw+zJj48bNXqTgikMXrX2Ooj+Nb16IyUQmbjbqgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723806954; c=relaxed/simple;
	bh=oXVD+UPH+QWYpHkj4afptP0TZSHGQ843JhJAmKhU1bg=;
	h=To:Subject:From:Message-Id:Date; b=Bhn3k3bzTndiNneEk4GZAk4akjd8hthLvAI7VaqixCqabSx5OHyCtu+lmPDSMbGhpnonemZGafEXhGgRDRx82OLdPqYppR8f7f5oB523n3UlcKqz4VgNgRN0PQTocxuRaWmO+zObygGA1dD8IG8MvClKqTBoeqs7L61bJJ5Sd8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUyCIknC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUyCIknC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9594C32782
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723806953;
	bh=oXVD+UPH+QWYpHkj4afptP0TZSHGQ843JhJAmKhU1bg=;
	h=To:Subject:From:Date:From;
	b=WUyCIknC4/UA0r/Vgo50hlhxlr5G1SwVwuYx+8+HMLKwwXL8b4BgJ5k7jhSHMp2lk
	 Mn8fYU0L80WNXIz5mtwVCgrox+WFB9Vc9PIlDGfyVz/HT9Xf9ccEbMBq9q8sNzdyUK
	 YnBH68KfQfNh7hGuZoW+zE58et1wZf4UlWfJE2K7N6XUEPK3rhTmk70+Cv31jKrEON
	 hNAKVo28hy2jOvw5qL6W61g9mEqn0bPL0mKgfrap/r1hQrE9hwhMpSbUk8jqhXmH2b
	 ks0EQ8Yp9aBmThvIEV8D5hU3Ixk9ZJVThy0KUtTpfFIxeNWBRhltjjEgr9TaF48TUe
	 0jqNVR+h3dG8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F84C531DC
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172380695360.27711.10306535432940747283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9187d79ad19189043270c6fab600f506fc90eb71534e81cd709088e139a6d189
Date: Fri, 16 Aug 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723806953
