Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E968B3D8F
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 05:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nllcSNW5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B62BC433C8
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 05:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701235096;
	bh=gFkd7UFVAwm64TikzdYzh+fkk5dNY0+tf9YnmCn6sQc=;
	h=To:Subject:From:Date:From;
	b=nllcSNW5R69dp8qCTcWhe3/TntDG1ATPf7YgVWOuiAhDJ7mGnpmSOn5TklxPiyjtH
	 Bz+PJZul3xXkwfjpn3FNhpKF6MYoXtyp+Jv7wvBJsKGPYrLcNZXr4pK2nWlgcZtPCV
	 1u+psIP0X1S/xRZQli2Jzz6vCuwcNvaJIgrQJmhcPg/5RbBYsI7OJvN4ZJl3o3If89
	 TbGK4ysNNtzvM5xweAI2B8mdbSMC12hpoaI3LiXDUlTSYzEjRJGo4ZlpF6zAM1prKG
	 tAdM9zJ5CBa2BMhoXvyOpCrxgDlqRtRYh/4XayAQ5segmRN7ZKP5OKlkuWGt0ovhL1
	 dwAz4yvEUs2zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 600CEC4167B
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 05:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170123509637.19509.10699123776998298695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cb18cdee17de18d583869e577786869ae402acb41e6a11ab7af699e13b0c6db
Date: Wed, 29 Nov 2023 05:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701235096
