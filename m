Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FCF2563A
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fQzmQj59"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8575CC43390
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705082896;
	bh=CEfjG1mGEzWAyuBnm9AgzW//5M4evYLmsS/WJiz3i28=;
	h=To:Subject:From:Date:From;
	b=fQzmQj59nEef+2now/FrtT6oErfua4mVhYeQTF0Y+8ssrdVdey85FJG63HlfSeYZa
	 VBuYRhyGoQu/VK6CNIvoWVMWPxVgmJ8v0Jgts11bw2er8sdrQQbthk7LQh81Zho0pn
	 +qBa0Ow5F3S5tjulQ6FPYVqDVfKxyNGqBL8u/twz50uHPR0DysYG6bIhEB9zBicJ6g
	 roit+ZJVPDqH1/hWO9dT3eLebJzM1B2VoOPnrXOFMoFbEhTLwRj0rJ6aYOfkMJZLva
	 LrQFsfgK8MJVLiyQLlZXmcsndDa/z/5yhvimdRBFU0W9+ALbthUZqkEnPyq81vImzc
	 WNueUXOVchBIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 688CEC4725D
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170508289642.27060.15686611617282532694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d10c3265e752d36541fe758ccca14cfa0359d3f7483c2b0814c44da5f646534
Date: Fri, 12 Jan 2024 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705082896
