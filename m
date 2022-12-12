Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2AC923BD
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 11:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79359C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 11:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670844087;
	bh=HInX/uy4QRAzsBbHAGDD7jvZsjVT6+xf4EoYgbztkGI=;
	h=To:Subject:From:Date:From;
	b=e8NzSQvdTu2AQ4mPntjBWhf26cwV4wQ+I8CXhxW8HP5QU9LBjXNEqDBO8whurNF/f
	 9ZD8KRNAaORjdot6nIbzfdmnt5zNmEsK1ODofMrYs1JhUn26zosN4GpJUv6p2RpRTv
	 beICLrCy3eeN7wSEf4F68AVX6Jao5u5/vo7KubB5mIPpJNE40zZO5dSYPZdwrea0dD
	 NEWSguTYSxV3yVU55vHvNxtZrvy74lzEpyukqEOwNpBWqJ5Jf4GcXbTA1ARsnI2t9z
	 sFz5f7/dFZ52wgmXQjoHU7xiQwTyPJVV0p95s5eBJ9XfBfSeTdpxIErjV46sR0KRj3
	 UMKEU6Fs44OfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FFC3C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 11:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167084408738.12839.15288758010995391818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 680cbe00217d93c6ae05c10bf64ad822c7811b0de2e753b2987fd87b4e3e826a
Date: Mon, 12 Dec 2022 11:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670844087
