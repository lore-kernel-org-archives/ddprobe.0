Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A71B382
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 19:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FA10C433D6
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 19:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668106854;
	bh=Rxq6LT/4EDdAFh0yPQB/qun7JGnX6RxPb8w/cBzMk+E=;
	h=To:Subject:From:Date:From;
	b=DgHJLaZsertYjPmHXZZ7Ig6I8SWjxb/1t3BaqYvHaCeBSSYlM2BOigvJ23z2nrSBk
	 nRbctbL/s7FLW8WXNnkIhXEMfpRG0S5VCYTODYeK0hyBEe6Gwfd0t30nq3/zrw9M7z
	 IjcV587dFSEdU8h6bBye2UAunpEPSLCbpBequvxoQwlj8cP1BNjGvo9lEN3XJ2gEM7
	 6zq7aJb7uyD8QuQmFll3k+xa3Sd3pMOaDcJfgQydLfcx95/Gd2yJ6A6cv139Nw9MvW
	 +DK6PfyfZP+J6Q94f9MFwa5YZWLtfJebe3yBINzaGvJbHMydfL9dRP2tzFd3Rvl87J
	 1AUj1nIKa5fBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 593A2C4332F
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 19:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166810685435.17592.18076007414618335556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46b8568419aa6f3bcb355564cf8b0466c0b552cf88b1039bd15f289aba1779fd
Date: Thu, 10 Nov 2022 19:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668106854
