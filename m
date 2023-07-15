Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6705E628
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 00:31:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA4C8C433C8
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 00:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689381068;
	bh=D1DMIs4SMPSGLnlWuO5AMY6wQbSAVQfmbYkUh5zOKRA=;
	h=To:Subject:From:Date:From;
	b=EO9tPaAiVMfZdcA8NM++bzpJyRcEH1QiT4Zaa0ZrjdKYmgiAJJZD8teBmMiYvYBGs
	 mIJW7aVTb9CTeawqVt0D/4tBNLv/iHlbLcWmIQjcF3Od8kgCuVFYhK+YT2H96M84ZE
	 QCouxoNHVhhQ1NRmvJ5GWn2JLliWQWcpQRf3XbEmTyeyCE5TefUMJarY6WE6rgj2Sv
	 EeV1OQaxkWNhNt7Jbaw/oHoUx1yHPBnOahjiW+YgOHIfXMFtwTultLM6Sw6hq2GbtZ
	 L4IZxjIlG4qWC7iWpUz7Psu8lJEnfhihY/ny/YIhHcW3to8DydfPCpu8ZdqNFVS+ma
	 cLF3FVReTf7xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82B9EB64DC
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 00:31:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168938106868.14447.9764170982752252783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d31998507e3d8b7d96e8b82ec202273f6f2fd6f51675948c458a07b167c11055
Date: Sat, 15 Jul 2023 00:31:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689381068
