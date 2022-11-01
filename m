Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C211D631
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 09:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73D9EC433D7
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 09:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667293854;
	bh=T72uQ7BoDIk9uQscIJzTc2vMO3YmwJILMID/vyjSsNE=;
	h=To:Subject:From:Date:From;
	b=Z2OojDsGDNqrCzdZK79EZOysq2SzBj+nlnYnVUuBiSKoSOnY6m2WTzhfvBU+MvOil
	 +h6UHXOVwklEBa0iPI9Hzrxk0MXvHUc+QJ9nJmPzxWgZz6YNr2mCY/7DBfyF1Ehz12
	 lVCdmE9gHeMoDMSiCtgzQkFYR36to4mouQ5dJDOoVmtt0wa/wI2CFIJr6ZXXqgE4UI
	 j+UutiK1sASKNdfy0rLw/lv0syj5KhJx5LSJnjxJhd9InYVjT6J7fm3Fl3b0KFlUPy
	 1anpMpJ611xGH2nRpdeObFdbv7i+aPRZyBarFMQ2pCUyzSsJCwkVr0AyGVPmo4iZrD
	 hRqa6fYQcnrcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 585A6FA3745
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 09:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166729385435.20640.493445244057825052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47f1dc79357e0f1c23eb5dea8be18156559b2a252951c95d812875c6c684f23b
Date: Tue, 01 Nov 2022 09:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667293854
