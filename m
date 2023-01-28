Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED023C0B
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 23:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA592C433EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 23:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674949385;
	bh=1d7PhN3U7klaSWfp/XOXGKtmTIkjlnzuZFkPSlRIlV4=;
	h=To:Subject:From:Date:From;
	b=u1JO8PiQQTFotw9iLSETIpjOW0ITOJjemoZmfyQOX2wn32Jg1tXRhPsQm4awoXqMj
	 wP0HcLmtOdpiQKb/qiFsLvJOaYsDoalZYeKR3XXpupDxe2cRvp6C3IOhvpEG9w0pCP
	 7wZXlmqUxPqrvKgEjSI/E2sEDuF+RIfjwT7zHHS6Qx+Z085VNv+K7tPVl97HNF/8v1
	 k+LdB+DU+nLxS2420qqGP4o7a+bEBvWHEDsOrAJyVnF0mBNzS/xLxpx/SSF3Yke5G4
	 Wgcu3TLYXGwaB1kyw/Vvk529sTw3pJdYZQ39HHQiUGDtstdk/2ATWU4eyKbX+WTs7K
	 Us+a7l75Ned3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA2C8C636CB
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 23:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167494938573.7192.9582601261854928880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 747d8be8bc67a92319da13a2cf478bc71fdc5933565282cbcf5475bcda48a503
Date: Sat, 28 Jan 2023 23:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674949385
