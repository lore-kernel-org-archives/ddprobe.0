Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C18ABA40
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 07:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 726FDC433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662795053;
	bh=wzAj0M998PmwKZy5tormi2gifhw+tYponHyiOwrCY3E=;
	h=To:Subject:From:Date:From;
	b=vB9ABRD93bmgM4dBHTsJLk9ddoTiU02iFwPTv3WZ5ixkctc+1L90f5RiMBK7rm7Ko
	 INDuco86k/WEJdwlvjy4d08YFjxGgDlj8S77eafthfOSqbgfIAayDI/98fRXnWsx0k
	 4S0fSau7gAMRTFqyFGxJh9smPnFAXCr6dn75u9GLqniWIvfL4WTJLzCjsmBWQLi7hI
	 fF3Z9bHdNGCtXAjxPEUXqEAru5puuhVWaY7nrmlfM2WtYQJWMFhwaD+CDt1UVBJ3Yt
	 neXlbIXj9li1E3xhiI1QnAT1SLmTibzVLOJ8yrRDi2WOYLl+8Q/sIuUk6z5HX2lv7h
	 oXLKNUlYNHSPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5530BECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166279505332.23563.9351354399499491250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 692681d943a6902885542f5ed6f8e63c7c3aaa17dc8734783c2f88544af58b8d
Date: Sat, 10 Sep 2022 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662795053
