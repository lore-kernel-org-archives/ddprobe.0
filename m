Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AFF1125C7
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 18:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 13C20C433C0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 18:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687198329;
	bh=PzGnNYy1x4K7weyGMWyS1RTpVwJz9w8ACaiqHrb0YYY=;
	h=To:Subject:From:Date:From;
	b=Z+NLuf0uk6IHc+Oem8m9GOSAly2UIgPNkTum2V/g5d5aQvYMyxVUMWzwNadmqFcuG
	 jmuT1dXnMBo/dMb8aZn1myMU8O0g3ss0+q/yOWZcsD3vNWYUfpamoCaQFWmO6b7N0M
	 ROx/Wscr8/zOAbKtUAnT5tkTWbf58Xf8hwxw2lXw0SHqTObP/R01QjPmEgzOA1KsMz
	 PpBd3CULAIkUqjzMA0EGWMvC60BlwZRsJOD0ulXBqgaEjtdcgc/3avNxb4hhQD/QG7
	 yvh/OpkZiUxK+2C0MESUQCVXPKIr4xCnwMtfPqtEIaSotyC8UBK2TIQnxsC+R3gBco
	 dmc+qHW+mRfxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE8BDEB64D9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 18:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168719832888.6914.13835954942259836086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab6b3edd7d4a18d77feae4046f6489ff6c01039278ef91a7628220b208c6b5db
Date: Mon, 19 Jun 2023 18:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687198328
