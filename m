Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E231841
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 04:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED4B9C433D2
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 04:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684037886;
	bh=9dcYWW43NQXi4tEPMj/RICCdeFDJOC6Rk8Y7Umunq6s=;
	h=To:Subject:From:Date:From;
	b=qzg9lOoeNQjOACebmW+iUzDrPsbDw9nHmrcuKR9JKkjExO7IzN6lGymTQzxU1hJRA
	 ih9arTo1qgzkDeVJyHzgjgNc3YnPXjlGrFWY8fduhRkIAYs7LLoImc3L/U6G/6qsVf
	 t2fMad9qyJGZUBHNpEKSCr1vofBVWncDbEKcxqdZstXF0VsL+xJ5itR7H1Nf13ffKy
	 l5JjMNG3Rbz0OvD8xboccBa2Og+cOjDXLs+q4qc3IHIFUW7LZoc2gjkbuEzLoO2DKO
	 Rp0MRKkulXhDjQkrkbxvB6Q2IakNsxjB110V4DWCrTbPBv94vYnEZnwnXaIlMMC4qW
	 x/x9Dc4U25mQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0908C77B7F
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 04:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168403788584.23447.2525486318348695613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc57cb1d7d08e1bdb7321c580eece344c93ab545190e52f2d4b15c05f44bab2a
Date: Sun, 14 May 2023 04:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684037885
