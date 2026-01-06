Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D408A355024
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767720233; cv=none; b=JNWwZJGYCmbRvwJ5vg9fgBc7wmngaI19dBAbwCzl7skBrAu0AgNX+PNDeXAWAF+ib05/clE9HTyAPRy0WvFLtZx/uNmJdQLCM9AV8JrNpYYg3TO2m7W3qgczB6txLLk+cJHqo/uatenGfFjDT6Oa0Ggc8653pnDRGvw/05rSwRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767720233; c=relaxed/simple;
	bh=6RZwkxjWNdar/QENFLy1ouzI79qJUK7xqpTSIrEfUjA=;
	h=To:Subject:From:Message-Id:Date; b=fG5ZjMWT/p86df9zJAJzmtbHMA90rNtwIZIj8FCys8NqKwRD8sQ7zVAypF5sZisIBXYXyg7IqPPHxeMiSRsU29LevHOFa+m9amGpba8E+fhCLhJqP5wyZ5Tf9R6OHtbKxnh6SSmPgfCm6wq+rP2rzyEPMMwgf6BxNnAFjwivbAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=omRyaQCI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="omRyaQCI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDABC16AAE
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767720233;
	bh=6RZwkxjWNdar/QENFLy1ouzI79qJUK7xqpTSIrEfUjA=;
	h=To:Subject:From:Date:From;
	b=omRyaQCIzt7Pcd2JAY6HAumxqba9uRFaAuQwrpUwgyO6LNoyjoJwTuAzfzfkIP+5c
	 R/POZNdfrBKXXVeLY9zQeh0c7elg16gLj+x2+sY+r5cB4TCWY6HtK8l9EJKg28nuYf
	 UjZr5hr6NBlM4TAunlw8TspN4WAsmO3MfhqQpEzyhaHdHZ4p5DCJw4fdqqQ5Pmfxvf
	 8IDtfPf0GS7LU39fs7o1YXNqx3mkDDW0Y2oWQUoAJ+d7ppb0wBtHelxW3+ILpZ7XEB
	 Z9dW/DRLAnpxQH7zlaWACXCDore7ZPQ+7efLHU6UvWylTi6NHxqPZIxCmWb7MU8Dfl
	 qdCY9Z9w5q8RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB2DCEFCE1
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176772023357.32569.16579543665921218231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d50d8c737102580283e74b55c9c4de87019c5971869c4336e14f6341603c7277
Date: Tue, 06 Jan 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767720233
