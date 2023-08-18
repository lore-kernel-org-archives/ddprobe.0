Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DCA3182BC
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 16:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC3F0C433C7
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 16:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692375848;
	bh=J6yqHt6MvEoc3k9tq8oasMywZCcwNYCfRm6mvplcXpQ=;
	h=To:Subject:From:Date:From;
	b=WvB+wcwX4cZ1ui2dIRXNMboyJTo1KYiVUouc91FEUy5ZcKwofmHyo5ndflmq4KedP
	 rcQL1nFwqMioxHQ0XicaoHnf6i0USBCqziYB/ny5s3UIyAYu150eYIVnZKX4SkjIev
	 gy9yo2XjSkidDO9O/sspXG4p5cDrhuFgly1IYv2PaP9JApDglK0qCedGzRZb8+lQXv
	 4IPsQzSyqo0ku2lsn5kVoja7hDTImF/3AAD6VgidmaaUFwS+jWLienwwIMAztt3Bwk
	 PK4yTmLdEGphpMjnZLVQpb4KZeHsiX8sTzgxQID8Xgm+esNobmTHFtbr9N5Iwen45k
	 Qv0wz4WXVMqQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B96E9C77B7C
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 16:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169237584874.3682.6082577476332235986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5621e3e58a9b8a6ba5aa441e7f15b0ae55b71099b972f0b8287d90c0d46e3101
Date: Fri, 18 Aug 2023 16:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692375848
