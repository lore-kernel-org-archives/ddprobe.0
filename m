Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3057ED
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 02:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0D0CC433EF
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 02:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680746826;
	bh=jYTsQ08ZBPYHORbhIhXqnluiBHSw5bcxsjYTL/CjIUU=;
	h=To:Subject:From:Date:From;
	b=IW2vJQfaiOQKgi2gV6EOtCx4T8rt05cmgzd+nasY2Ta1RVA1d6ctZxXpHpGMdYkcM
	 uZYGZ0jPhw6ufrPSG/JIIZwvdswxLisUjEGbixXQ93yfEJk86kKhIWJgxR8VgmVga/
	 XZqndXT+f6D+9vk8fxTB1piPtGD2MpLmApTq/JydDWskJcF7iEdl3iHeVEOsS4DUf8
	 /4eEiBNVFpBwo5TDcklNF9YadLPF7WjYOeG7R3f/cN5PoHz9lhIl4NPQ2Gz8uPixKZ
	 7Xf/Q4OEDj9J1A4IwRtK3pOD/j5fxnrGoyPaGPDmeYzeZR+5kecgDDZc86royLQsu7
	 1hEKCJ4RsWwWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE314C761A6
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 02:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168074682577.18497.9181316734630103825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2e3b026a955dcbea46d964aac90ca96b4c0288e7e7f6404eadfc7f760cae53f
Date: Thu, 06 Apr 2023 02:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680746825
