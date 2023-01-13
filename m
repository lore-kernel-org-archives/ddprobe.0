Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC07836D
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 10:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F3DFC433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 10:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673605887;
	bh=St4mPvN/yF5bF+Sat7IHM/F2Wpj0Wem5tsnZixRlrbM=;
	h=To:Subject:From:Date:From;
	b=Y4c2tlKZgkE3cmtQElOm5aFY7+m5AOVyPh7HDY7D3dVxloXsSjHjsmsR4of9VH95h
	 bD+EfHd8wvY595f+Kk3PJGbIB+cFLsgyk29HZhPSCE44IgJV+0xsP6nVmq/81vBENU
	 shEeZ3DNAns6tz19XvnIk7IUaUp34coZb6CvyyL5mx+kRG5Jp8q/DySeUrBLLOIruK
	 xdAWxPSpZFXtijkwDCDMvtDgERHoYUGC+YK+dUQOX5RakfqTNxdSOiphuPRqLbc4W4
	 dk0J68IP+Y6xt6P+gPfSE2qePCkSyHUloFFcWLVBAftrRzkJc5Us3S+NKGLOz1GvR6
	 euAsb4s0NwJ4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 628D0C54EBE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 10:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167360588739.15403.1249245917584538365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f67eb88166ab2b77dc905998b89a32b871f12d495172913af345e876edfb64f9
Date: Fri, 13 Jan 2023 10:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673605887
