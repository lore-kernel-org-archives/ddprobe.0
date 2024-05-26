Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6968CA32
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 03:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716693263; cv=none; b=fxhDbE1Q2NQU5afAMABZIefRSUiQJj0tm8/G4AvrBuv/+Sgji/E6gmsolvQSG+wcagOk9rRQrgf7o2XPEkqhhJ3VLKt8tSZvJJN13EWxPFHrdh6ZPwKW7TAhY6+kf01Q4lha+QQN9SaR3Uh/dghDmDN8kbAwh6LS9OGc/Lwow8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716693263; c=relaxed/simple;
	bh=+wHK+9L0TJy4cQAwcbCT4LzMd/3FKoPVFFbmvnZdIRA=;
	h=To:Subject:From:Message-Id:Date; b=C/FQzWvWEkyDeJ27lulHqTzdl39kAU+IftACcU0PuTKgVNSog7tqIs1qgopHk3M4ABxwrQaxkqaX8PbfK9YgGHu9+ZTL//zR3bBylWv6K8IxUW8fHGkxSPRVak4D69s1KdouT/68ifW3AQD4H+GfJzSJfZzgin9R5ywXjRt0yQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZ6ZCZZH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZ6ZCZZH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE9CDC3277B
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 03:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716693262;
	bh=+wHK+9L0TJy4cQAwcbCT4LzMd/3FKoPVFFbmvnZdIRA=;
	h=To:Subject:From:Date:From;
	b=jZ6ZCZZHD1CtCAURzciy6dyrFJRR6AkdIJB5nPfJe0ymDf1moaOf+oF9C1bV9WzMr
	 /dr3gdJaLiH8j/1of40079Vbp6ZIfpuFB/TlpikFLmo9qZntFqJlyB884MaqmMw7Rm
	 5JQB/KmipByTm7b4IOPJ/jw6ekohjUxElhW9i3ijqESrjFWmhFpd8UBArGTj6UumAv
	 6hjuPdRQkav0Lv1niNV8CYk5FyBPAC/FIz+LDn7Y9QPCtYOuXtKB/j0lVxcYcDJLsz
	 mf+V2bzC1ylTEhR+D5RtPnQAdgCmYhMehu5EhKs+hL4QQIM9yTaQnjg3lBrp4PTZIC
	 /vE+6neTNoYLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6302C25B78
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 03:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171669326279.6675.17402762981560000805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03e9a7424901b04af459cbb28e25d19e8478d636726b4eb764436164a3883783
Date: Sun, 26 May 2024 03:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716693262
