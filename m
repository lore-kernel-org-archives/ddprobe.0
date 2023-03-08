Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F34C7B
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 06:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEC80C4339B
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 06:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678258265;
	bh=5sIcShQc+GSaH9DxrW84rAYGY0wDPYzf3SeITi+pV40=;
	h=To:Subject:From:Date:From;
	b=RkFNPbio10nDG2RdvNnvAnk2Iq1JVo2eFX9F2T6REj0B3TOJYAHEtsLAkGTLmvUar
	 9kkQM+n1T/qGrBYnR8ayWpOnUUULaCEvqpvzkE56Fg9g98wgZ6VcUt3XXQTymRZHa3
	 VYcA9CaHFoBgnh4YxkMHSKHYxqk1u25edQjTshvx6RW3dTfBZc5cL1Zr+Z7dNmFmzG
	 AGX5reQyercx5NbsWGN2OkUsyTVgxbiijajnsNofsi96whX+hFFKihPTfq3NzYpzqZ
	 IYAjNqkj596+TznLMhZsZUTJPhwMeJhSlgN2+a/xGIwwoIqHa2kRn47WiD3OJgHer/
	 fcZLOKPSISAvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1774C64EC4
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 06:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167825826574.4198.3787819279872131692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ebb187901b9e063cdad9b08ab485d6ad5ab7ade721f882a117ac5ccdc2ab785
Date: Wed, 08 Mar 2023 06:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678258265
