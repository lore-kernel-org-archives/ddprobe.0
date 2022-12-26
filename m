Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D240D7E3
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 08:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F1A1C433EF
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 08:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672043487;
	bh=ygRt6XzZQSs14Z5wbzkmKzcDy/Pd2izYsgcYRD6GKbM=;
	h=To:Subject:From:Date:From;
	b=Sx3hPLUswdISh28rED4pI0QiDwwjcfFGXSHkTmDdikN7wfDsL/9ChM9iRyCinaSCW
	 z0k0/O3yuBPR5PI191I/l9r3gfnTv4XCYzEsKORNDeuQUPjB3eWkltvMvrYfn396kN
	 wFJO7rGX7E1H6ijCXcq3iw/uz0/ZhifzeN0WiFIvwv3CE1+TQbxu3mAi7drepIGwXH
	 pQfPaJgNzIQXElkzoARX9yg2aIvRJ9Bou5QjR76OKRwkOPpCqLgV6IbVzSczIxucNV
	 WpRC3OzqTrPgepayWD2+zx8CR09BLZF3oP+fwyjJN0pVRVhF9RWvbkbGuXOx1wWNkg
	 hX2+Y/qzshr+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70A90C4332F
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 08:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167204348745.31981.4467628478280971789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ae8f09026a4cbdafd94618e945b9c09d141163f17b64fecd7fda034b1301282
Date: Mon, 26 Dec 2022 08:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672043487
