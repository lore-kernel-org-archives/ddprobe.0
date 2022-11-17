Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA2F917E0
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 07:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F037C433C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 07:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668670254;
	bh=HlHQ+MFnHqWP1Kc8ALAxr8GlzXcy0eisJPkj6Kq7RlU=;
	h=To:Subject:From:Date:From;
	b=SUjNkEpwE586rNf03N6Evy7vITrkyaq7enrnPnf2BW+bEKEbzOA5cjKXnEE1ynoCb
	 2TZh+1wLD7NLuVNVRQJNVfELJ+C74EfUGmlalzNyTld3ugYt52xXqk1Bzn7opayV5z
	 NIYNyGCAyC9mLW0ydefc9nnkKV/2yVaIxSoMHZGXLwx0OeGmzJtDxRJd0oTcoJRkrW
	 ws42DcCaSOGyC8YO4X01Tpa9/U8A2dzPnF9LLY40C1Mes+0pnsE9/pq21na7lILhHv
	 AZILHIcHjQxYG0mjKixyo2ncBYgIUzJBdxusyEMgr5few7ZnU5C8O03T1xGFK1ur53
	 Fkq4x375x2EMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5699CC433FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 07:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166867025434.8553.14335314857627234153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 383288adc0c0dd56507fe4c50ed4f0d78b6fbc1f7be7df4edd57d2b6162f40bf
Date: Thu, 17 Nov 2022 07:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668670254
