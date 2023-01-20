Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2849020EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 11:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE666C4339B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 11:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674215525;
	bh=nJciyekcR1E7g9gX8k72yVRkpadcArkNdcFw258YWyA=;
	h=To:Subject:From:Date:From;
	b=qfiy+h0NKBLbohk/o+fcPrYVlFlJlAqmRdsx1/mTd83RDSjMvwZaCHM/+DS8a7+pB
	 ANYsZpCxGr6ZF6GsyiBgC4IJqoMCtnoZ42tAa3h1FRp+6ZaIXFksj8PcYX7QROsqP1
	 vBnAl3xycq5k7itH7TE2Gx2b8jviS2/SWlnN/d3dkO8nB6Kjc/LZUMGNDjVBECRe1W
	 R73dz+amRuZKrcqhVbkoEo32SYWDJLtBlyi+jr6g6Tk88EFjr5vDPGOotA99jx4nRt
	 Z16Y2YRh54Fb1MaXQU0kaKV4b83Qkyvrl8zHQ1/BelAwqOlhK90caLC5jY4L+OZ8T1
	 egc8s8lUw1nBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4534C05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 11:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167421552573.13908.1313835593040912386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38bd808f384993ad1dce436a76ce126675030ead48ecfd1cb39153ff88dc3709
Date: Fri, 20 Jan 2023 11:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674215525
