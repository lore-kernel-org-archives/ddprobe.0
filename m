Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F5728E8
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 11:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D564BC433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 11:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674819185;
	bh=6RRM6KrFV/osT4xFUMGE7JuFIJC6Irz/dL7ObxMEvBM=;
	h=To:Subject:From:Date:From;
	b=WNzby8bmJdDm4WD5WiyogWyzbeA7pjoWQ4n5RfpL86w96kIw8uSpEma4RP2F/SQLy
	 rSkgKQpB8W/rY4jco3kOzvQhcCLFSfuvTgmAnUkjoTxnGt8YBQYBlv11rSxs5q8tsz
	 HDxLQMMH9x+JpKPIj+7G/PdqX+PvP/dNGuiukIdnsiBhEjIi5TAYT9ibZiCotWqD51
	 CNKNS5FYlDc1XW7FF89EfX4itQaGs1xjtMyvfKxhg2FYEAoZmyOLIRDmE1RSHj5f/b
	 gkQ6IBmKNxkcLnsw2iquVBBv2AtS2CG20yrMy+sH7sR1A14rgTukGPv5ZzR0+DcZ9L
	 DSBKJIZ8LOL+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9785C61DA4
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 11:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167481918575.10362.18175307356976908950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecf24c24d26e6978781fb9dcd54ee2f777ff5605c31dc94330c3dce03fc08deb
Date: Fri, 27 Jan 2023 11:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674819185
