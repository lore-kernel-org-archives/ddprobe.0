Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B25EC5
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 11:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9CE2C433D2
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 11:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682249466;
	bh=fIeqD8ZU5j6Tej7fE6tA/1pRMQxxqF/zFcUjX1eOUF0=;
	h=To:Subject:From:Date:From;
	b=MQRYIJHYyDEQfCv49PiY2pstp3NYa+MKme1UVsl9kayoJ+YZoybmOp8LQ9LS3GDHE
	 OzCysY1QS2y03tqXBebMGDbgi7V2RAVBVxuTahjiZhHz1h6ZQtE2yMa3WbSfQy4BI4
	 JolBIrWG/OA16q5h3qtnW8LDXwWBGNkGUlCRlQFZuiYO//lXb64WQdtAK1KrHozIfu
	 ri+LOPwYiBpu3TQXtZGR1scbbeoVCdWpLkZx8y2v9EOvop3Bak5AbX4MsPJmJNcXYU
	 BCGaQRGeIpnxSPO5n0bFolPhS6NX05fzUseL+xgG0zpciY3FIc8koGBiM9ypPuIrrX
	 0m53R1qSN4hKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA570C77B76
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 11:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168224946575.20723.4327127495550171894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1b40f689cc980c4784fc10b717202a5ce75c49468a222b19228fe4e4e88f332
Date: Sun, 23 Apr 2023 11:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682249465
