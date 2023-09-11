Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E8B320A
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 08:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2100C433C9
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 08:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694421248;
	bh=/0OkHume58bT81e+I6o2m4zRKiRjWWY+nYgzrrbUpgM=;
	h=To:Subject:From:Date:From;
	b=D1956wy9KjWCwShWMj6c5sMlFLGnuMpCDgjoA2HwqvUc3RjVYL4iCPoknGc7K/eVm
	 TDdLCysiYiy2nMCohYJ0TP4Nrel7CJu5D9uj7ckpdfIEg3ohYzpVdfiJdISQOahfHT
	 suFKMBu/P0gUnYHHV7PUAWUQQ43d4cLYxN77GrujrzdlLhZ5T5w4XCpL28ca7roNhV
	 cyG63AoOGVfgGKQFdz0XZ7J25pyVedx4bXfsFsgaJDQtkSOpFes6iq8VljFikPv6Zg
	 mcRw05RdnoiBwSbN2BZL8cQYe6paDeWCPd/vBUdtUZpDq2nxedlw965r2KyINmeimz
	 sIjd/lhUQsvlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A44EE7FF4
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 08:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169442124868.10298.8613845531348524294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 552e0487012e0447da98b75b7bdc3a473b4e9e4ae82103d179022b5465d83688
Date: Mon, 11 Sep 2023 08:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694421248
