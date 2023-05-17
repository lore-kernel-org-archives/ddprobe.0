Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3265D1DDDD
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 12:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D72DAC433D2
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 12:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684327385;
	bh=nq7oL2hw7mI+qGgnhI5hFLE3Ygq6rlUur6iZ21ac3DM=;
	h=To:Subject:From:Date:From;
	b=rniFn7sAUIbl7zprVv8HZLC5CB4cnlAjx34d8qjeo54iU4cn821yShS00JKg+9Auh
	 UKNkeEW6tkmkZ7YQZSYm/7Bh7enmeleK6OTMe0P/VRokFKU4zHT+OUqtFGP+oyfwXE
	 VL5SJUJcBpIVdpUvaUlarSboxhRi5B2PHKHXgxxAd/DeWsdM3PoCUn07e5mX4K3oPF
	 DAXtULhW8dzb6bmZCl/bVtIEV5Hjulpx2VWMcTKFAEJoNG2r0+l4ACUINyiwZDlRtk
	 Yx/jKa0/z4KtonbuAtWF4j3IaC5o5k3BuAs4nO3GWUjuPcizWYg6gh6SA1qDleaYpF
	 Ay1Mt2wsyIusQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B78AFC77B75
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 12:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168432738574.21223.11526837527479611355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d2f388d244b624a2721c2a501a98f61c3fa32fb63db6ac6121f4da28c0ad0a4
Date: Wed, 17 May 2023 12:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684327385
