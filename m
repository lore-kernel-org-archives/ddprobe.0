Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4C31118A
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 22:30:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9FE8C433C0
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 22:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687041008;
	bh=juyPwhbS5LUdMOYTre3jTW2Y7utqMPNYSsYpEGa6Zcs=;
	h=To:Subject:From:Date:From;
	b=F2u62X3WmjOvx5YrTtB4RCWWO4ek5HXkG6So7YqS1el8LM53nvgItBCbRqiI8HQKA
	 VqDPRCSX1lIwLA90kYWLGQuxIx8OuwhlBNJHfZlWLQY3nknCkIZ8QJ09y3lbVa8qgY
	 IV4kdht06wbL+J345LImjTDYL4HvLd57mc78SSlSLPytl9pt+P9XIV+1Kr1ZfJVoaK
	 TperHt3CmekSMHVUCj/iOnOIAcAtpB17wQs78zLEzodz+2yH7wwLV+yhvWT2iw0H8Q
	 MFFaoEXw7qnXEGn6gEG2oKO4L2V8p68Qg+ApPW9QLl/7PmOMzcMJgtrymWOBlz5P+c
	 Uw7LS7cY4+J4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE82FEB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 22:30:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168704100870.8997.2208983442666011259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44e83ce8f6ad760a0ee1c02a1b8d2857557b1235637b2552ba94a40d5e143895
Date: Sat, 17 Jun 2023 22:30:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687041008
