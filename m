Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32AA3E4C7
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 22:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D85D0C433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 22:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678487105;
	bh=JBl/clQXF57gRoKgVc2JgcAEjqC6Pq4gPk/ZIflWBeU=;
	h=To:Subject:From:Date:From;
	b=gY8ll049IwpIXi7nGQ7EqBwXgXpy3cHcgTbL61xeGT4Oa36GxYnivYMfcqAHjcbFg
	 LjgAb17j24bLR3b13JbuXboBq/7ajdqdaDwf7/RcPvyPvIPwPoOtGmgrm2skXYlcZc
	 vU27a4GEDq+qPQ4QK/uBlzN/1V4EGW6gWGDiMf4R29aXlnFW1Aw5/HKHMj6CYE2jGR
	 Y+JURzcDpENPz/2G6/MbJWnoC5Fi48cEZ9vnn3USqEYbuDQR9ZDcVgGoqwjCGKv467
	 4Bda528XftMBexwxb/IRYIpUka+zUCyna00zXOMYF6bxGmZkyeCWa5XEf4lA+emYg5
	 gopbRPyRTCK1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE9A5C6FA99
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 22:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167848710577.18647.8591750165310132044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 811b56e076675d4c89cda2423b1740e44dbd1a31f97e1ab0e36850172464bb1c
Date: Fri, 10 Mar 2023 22:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678487105
