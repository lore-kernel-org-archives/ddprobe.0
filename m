Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A0F88F72
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 23:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE49CC433C7
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 23:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691967788;
	bh=J1aUkIN3MWq6Qi6uTsm/GZ3SURpAYUhSo/Qa5cMBz4s=;
	h=To:Subject:From:Date:From;
	b=mkiIoPxfa5VjRqS8g6Xohv0+yBirgFHLShXTD6S1wuZUt4Wz2CJIQK38/R3/0Ua8E
	 uXYaMUMPV8NS61/EPU8NYxnyVOik5qEY14rRX5sC2nQlXy4vyqqjaJ0FsNCF2G8WTi
	 C3uCP78JFD6KBDTO39ak3K6NLwQyLW2eiDz0gWD5ViINtp2tIzSybyFtL+9WQpZc71
	 2+tzjc+KTHIxKzwQNcJ5iq/6agVd9kr24RP+5luwtDJt72W5PtIKBmBhkyosfsVUQW
	 vz3u/31Ezv1geF8TNTDINGDPKdkQjGd5qPpstZBMS3LNSsYHMHlCxt3mUJ3PdGWUsd
	 4dfpc2Dp+SKeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1084EB64DD
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 23:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169196778868.6694.16536192036540665522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0211a0b723ad2fee34e4016845a4a107c7a65790855bb67c24e224757356136d
Date: Sun, 13 Aug 2023 23:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691967788
