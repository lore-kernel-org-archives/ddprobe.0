Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEDA620E4
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 11:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75006C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 11:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668857454;
	bh=YT5uDUgirHnEymTnzSTvt5cvrf33kYhq6IKUyke2kRI=;
	h=To:Subject:From:Date:From;
	b=p9IQLYtHtWDs7itKK4bIr771lzjYT3btpTrTkxis/+OJTwCLIwm5BtHcduwDauBm6
	 qtUL84gOa9BOMncapj7eVx4RgIOC8dxpkGdpYkhyhVWB+uRMDhc+rNVpCI9iYeJ+dJ
	 JyOq85iaLzM75bfUbVVQRKIO5tkwcasSZNcVYrxi5wSnNDxn/RPS4MpBaiU3dpbxMU
	 puTYyZlrQNREZ5sFSpRXrG7M2LbPkCdvbYy660kYHvwCVemwPBAVpO7lf3b429KsVA
	 ibD1OYCQt1Gwr48P3hdnp1bGO3d4WvzVkVuICosxIFk3kR6kOVAsWRRs9KDMHfRqZT
	 hu11+9IwwQYNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 561F7C433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 11:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166885745433.28051.6452125564861172324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c386222e665b9f0dfbe8fc1ce4f9f2bd936ec1c05b500beeb2d129b2b540b68
Date: Sat, 19 Nov 2022 11:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668857454
