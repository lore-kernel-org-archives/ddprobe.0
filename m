Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24D47F
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 22:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E2CAC433D6
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665096053;
	bh=Y4UGXtf2miPACo4NjUXjOHFJlQWwgQszkIkS1qOD73w=;
	h=To:Subject:From:Date:From;
	b=X8BL4l/0xFQA4nWH19QCg8ALAnoy8oz98GmLSurYSyM9aMooqsMee7hwXYSmjAMsl
	 DuvkTfcO3AVq8byoF3QusEDmpuP25OQQxzKE+kFP3kvX7RHMGgYQnawr48qLUkFij6
	 JQ4hJRkfQz8Ze5CvceDoKCoOaP1QQlTSbVq4hT/1B3+FIAiJ5lqDGeCjb7fvrQqZt7
	 blYumK/30UyMZl+rCc5bLdBDUJwlRS5jNJQUhSCRRewtWsT/t+wb58qMVUApRx2xzR
	 Yp8FCXeYAUUVosi5tg6tQ7sOUBHkCRgXHevQlVo5Pqsv8aKhcN9b4nEqFBNvUF3zCo
	 NsZU2bw54oZzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56A3BC433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 22:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166509605334.16051.8998047043206853338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df15d205dc018300ec21e838d4a9d87d9fb9090e4c0b7d1b9ffc862268055ec7
Date: Thu, 06 Oct 2022 22:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665096053
