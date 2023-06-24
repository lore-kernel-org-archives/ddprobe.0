Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B43D818
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 07:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBDE6C433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 07:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687591988;
	bh=shoZ1JFy8F0hETvjfmq47Z25tdiVp1PJ7A7RVlfhCTQ=;
	h=To:Subject:From:Date:From;
	b=R41DIseHsqrIie3KE/ZgMutWGkHFJFPOF4WrRaEGKKNNE4pjRphGA5XnVeyIRgzuN
	 VHzM17TOKmTFz4L8XHWF3EQJKeC77lOg25Mcif6eiZIftVzThzlLDYUUSiWKjZpS5c
	 rJ1P0ui5z7SNXQEyCwXEz9bhQi5T848oaStX9+jJqwWk8g26guVfICARQc5DN2ZyHu
	 e6mZLUOV2TkWmurUDRtHT1eApTiDzmq8MnbshymauLKqaCz4LJqiDGUVf+Qyo+7Vti
	 f5nVbiecuPX28rn3tXb4RVyMDRhAQb0+AubBe15coy1hU4Rv/5GvHdYFClJSClU9ti
	 ZDF315ff19LQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA344EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 07:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168759198868.8987.15875193772682929462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b49c39d2f49e1f9f0d49ad0ef4de3a4abcc0188b3309713a09c85e2ccc3c066
Date: Sat, 24 Jun 2023 07:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687591988
