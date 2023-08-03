Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396BE7F
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 02:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF4DFC433C8
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 02:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691028128;
	bh=xutjedBrq1bqKcAg7hkk3tigxR/KW9i9FggZYiZKpJc=;
	h=To:Subject:From:Date:From;
	b=gB5itkQhg+UzzMP8oYuacZ6LYsBLbLMYhgc+NJxLWZrKpgYHg06WclW7dPTRl1gTw
	 u+ormQT/zvcSXpegUu/v7FlhNPw9MWQm0EMRgYn9nxcGlfYGlO93j+hp6tFfkAN76P
	 0Mq3QMS/PPEi8yEJQkS7QZkH9NybU8hpHVohVbnQ9o1nEYy7wMUJwF0Nt85LMz8cFJ
	 qa0LyFc91Aa3SAUUT1ZNhCOKayVRJbLrf7OObS61hcHbj5Kc3vb4+EFrMMnqoTc4p4
	 blsFORtw7uEfJ1vqhCuBSKkA6DCeosvNsi7MmMSzbnInVwcMpwRuymM6wB7cj7BO+n
	 8bkt2+8v1BvOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E9DC001DF
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 02:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169102812868.16252.9433557985118782732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03009229e63f61c4a4b4eb08a822c843d3ee0f1f4db3c543dcc2346cd5e422ec
Date: Thu, 03 Aug 2023 02:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691028128
