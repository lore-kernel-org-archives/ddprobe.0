Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21BB42CA6
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 20:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C98E3C433D2
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 20:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673208687;
	bh=DYB9P3VM5oQv57FNnijJOalKsipOpZL1spwOEH213/U=;
	h=To:Subject:From:Date:From;
	b=b6pXHa6mQBBNsSewEBKcOuQasD82kz6vk4ILo7oQpNDGALlTGza0pAoyTW1rchdpR
	 5S5xkoNRf1PC7F6fpqmKzm3DIgCbagYWGZEw1RTnXJvBwbjvcX67rbo2mMXILR+cmX
	 VhrYoiXqUL+sTq9y0fXrCqT0vZmxfdqNE6CR5FK/ol9d03fTrrDsTaMMbPgYSiiDq9
	 aAAvRgjKs6ZkLpjoArNFClzg0/OarGdB+5ozQotGJ31Nboa9xLUjhP9i4OIf84r4WD
	 JEXzTFYMdtqcaelLx/jJ7TSCDsqbiN6LfOfAhK+e/zgbXM4Uh2x9Mpr0LEs6WhLk9S
	 +jKpjvv44TBaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DEAC54EBD
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 20:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167320868762.19688.16817732647792670767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40d4a20f4d3d6fa629dbfe0dce2a2a943ba9b95a1731976124685fc07835b0cb
Date: Sun, 08 Jan 2023 20:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673208687
