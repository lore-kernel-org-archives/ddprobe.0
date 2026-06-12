Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AC829B8D0
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 15:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781278594; cv=none; b=pu4wVsw4RtXHC+pZ8i/CsKvj5PgILLFycVegrcdITakGQSCK9HgnmvEQPp9yG6xTfJSH5b+1u96XUUZOoiP9ZaKOXl1xqqv6T777PnrDekfOc3NbfPrtFzGEzBJYT99qVQlJg4YCxKwQjAJmgyJLmBCMtKAvtmE9Y51I9uuzv/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781278594; c=relaxed/simple;
	bh=vI+u3z+kL4Z9fEXqVK5Dwo8cK/7NGaDCAKMgPj9Alik=;
	h=To:Subject:From:Message-Id:Date; b=Hd1YXP2JAWqTpM8qCjxm4gbjvFDxZLQ9beGQ3MUlXLPIqKOu2LChn9rnffLR7TlIEx1QSAdsHwOeW5OjDJn0g0bEXvdc70TJvi6XgYVj3T5L7VNF78sSnPWv7Ubs/VmN0N5Ba1tO04ruAV4gA4OrSCQguQ3THE96c1YDlA4Sw7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EwSxaTiL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EwSxaTiL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA129C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 15:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781278593;
	bh=vI+u3z+kL4Z9fEXqVK5Dwo8cK/7NGaDCAKMgPj9Alik=;
	h=To:Subject:From:Date:From;
	b=EwSxaTiLlAJPQ7mJEThCjQgcRO9gJus5dIjIoBum9ap4xk5Wf09dXzVIE05ipACh6
	 4ohoxRYgrzR9y/Ly9XGNEoQ59nlXF75T73I1vXHEt05ccdRcS5PwfZeAXz4BW4Vi7i
	 01iWA7ZBJde5h36kdtRiHKOn3Zx3iJ7XJzagSAhtAbA6+MNk2IYQ37ouoMR7ldZp2g
	 eSTbze0pyhskfZ54gxabaItsgO0Y94/3+PCLJJmyHPlPZoC06qh+NXvvAwJZfLP26h
	 E7PgO+v4oogw6mUWu6I4Fl7Nu60A5hhiuTSaInjhZ5/nCJiVsIN9Vo7JEI+wzMXLST
	 HIOQAhJA7wUgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB68DCD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 15:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178127859369.31469.8474335770088030710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7f28597aca8c364064ab33333d0926eca35abe3934eb01d64209dc387bcd408
Date: Fri, 12 Jun 2026 15:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781278593
