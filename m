Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEA2D15A8
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 02:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64DA0C433D7
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665540653;
	bh=i+sO+UoM2ifl6HRi69zlaunSrn9cPNb1eTznTQRz+SY=;
	h=To:Subject:From:Date:From;
	b=T5DoDjRhDKZAywE59KARiClVKRdB2TbWWB8RjpSlnQdWLBaYSmQJs7HMnv2uqZr9w
	 sAkN9jI/GqODkCnLa0B5pgzDjjofq7JTti0i0M+OGTL7kTuHHBbFTPzQ347xYj0XkR
	 feKkxF89lSrIsEzXeW//OcE2G4ShJAdiM4cK3irdGlkIVGvt6IqtzdveeTBZPlnZZa
	 ljhZ7v5tRGXzbOJLinQmQUlSTdIes6ZK6uG7W7Dg8zJDVWCfa+WjVwzQrxPGCakrCI
	 h+3YM5tkWNzOhX0LVHUKEFAYISbaG7ed+tuu1j96jDitd8INkkg0+P03+6U/LIfNJe
	 0n8erlGZ+hgNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F011C433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 02:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166554065331.17981.3775868671462368177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58a2ddf2bfb31ff9cfc585199bf039ebdf377650f3417a9945e0c3dbb263d96e
Date: Wed, 12 Oct 2022 02:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665540653
