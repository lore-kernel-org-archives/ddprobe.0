Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5126119
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="poOYY+Ou"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82134C433C7
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698481096;
	bh=obh0hDIXsvvXzXI9oe0ktQj4RvNEnt45gOVKUGB5lt0=;
	h=To:Subject:From:Date:From;
	b=poOYY+OumfiqOzeIFBcd+vzZ3vxWYFu12Mbt5j6RVHSofW+NcehVO+1F9SFLhdczd
	 hbCFPThW03C8f+qb8fA2k4IskaNuAowkjWW/v8w5Wz4MjFWojPQlKrzK4NTN9A/smN
	 1F2pRvPWIWA1Bydq5xJlEcLug3Bg4FHCx9lq2t6R68gxPjFM32GOmp5x7xF7Ue3Ghc
	 +ieDtz5OazmM5GfsS0DCEd8HotbsLtUfIKhiJhlouSN5PUzrjyzfneAmsL+IRHxGQV
	 it42GyrJcUJBJyGWx5gNXBjAv+mkk/1Jg2OLnjvk5K6sCbxrIKTXejesrGYXXUwlJc
	 /xpMYBoORY2yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 638C5C27C47
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169848109640.15994.15674794217512000403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75c1b389312149fd38f49b42481dd611848624e4c52732226004ceb3ec15500d
Date: Sat, 28 Oct 2023 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698481096
