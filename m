Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130CD4439F
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1uLhDi3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D4CAC433C7
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701206896;
	bh=wvHevp4POTUN1bQ1VRmyKgoGJQSdh+9ECw1VUayjEPc=;
	h=To:Subject:From:Date:From;
	b=L1uLhDi381gtmXhJF+fIn6UlnJ19QdhsSSfxgLs8zIX4PSG6/dUo64KNKcPrBIMZ1
	 9aT4nDBbwAq6E1QNTP7IfAeF8bZHnKaf3xp8Ak6lWlGOZoG7xUUZo9a/JFBNy+LKcb
	 ewcS6ZstmwkYn7CX7rrq0XUcBO+tId5ouZd0KCFGkEG8IPDN3Cio7IBN8Fla83Ixe1
	 lfzCM2esA/7D5vc9+TQ8TK6MI0KBALvdhopCpL1RiPTuuo9J6Q77Z9SN9Vd2fPwYIP
	 m8jfWuIfckhVMy54GrE/VV1wIOkhxqwz1wBXMFm6qhBnCMjEZYhJVUynZP0CqPWT9x
	 SG49YWYbzBavA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D835C4167B
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170120689637.14128.15894941864794352744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2372474113f840a70ccdb73be97aed02298e4be6ef20c5c36fb65c4110b293b9
Date: Tue, 28 Nov 2023 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701206896
