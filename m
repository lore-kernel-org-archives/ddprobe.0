Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED2CEA6
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hBZ/W/yO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 825F7C433C8
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698800896;
	bh=6lxYAKPVcoTD8oFKt9aS7J+7iHZ5YWJNVA6qB7+H7a0=;
	h=To:Subject:From:Date:From;
	b=hBZ/W/yO2ADMQiIdCQIJ9HID39EinAPg/bxSclDK0WmhZDusXhmJZCjMyehjsvUNf
	 uG2RnuiKH2lzfkyg5jP4+6sxYreZeo+gdNe3c1BUx3Jgpq9n1lVeQiucLXlvvjwOFC
	 Kj1+6489WkPBHVFI5mRz4dN+wLxsT9OhreBaI11oWzDml5CGHvbm/5o8QkncgfXNMG
	 LzCD9htihOy5UrEBpUyA3/rB9s2ifQKjjLH7ako1J1TmKRkMMAb/FR7Dw32IsR3eHu
	 FhFeYbLl8batg+DvwbRWmrQaCa75x4KMRDGkf3Iml4h1EoV570a9L92Gu0ug40QXSp
	 YZKxOTzsh5l+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6622AC4332F
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169880089640.9344.10483963044008332319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8850c7feae4b28a6056768a6484bbd105d14628e2b21263e82942cc2126e5f4f
Date: Wed, 01 Nov 2023 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698800896
