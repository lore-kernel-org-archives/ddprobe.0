Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529CE7E6
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 04:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0B97C433EF
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 04:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680757026;
	bh=INwii3vM+Rvj8o2182Ew7/5Po71ys85SqrMOWbpVbdE=;
	h=To:Subject:From:Date:From;
	b=mpQ9px/xqub1kps7IPUq7dm1O36JQilSDzeLe/VJJnLcwHEtrRJtJDngv6kaKJcfs
	 KG2qtS5dadw/a5FCLeGntB39pV0o8zAAMQRFqPMChQa5ZNHtZZW5VaudY4uuwsl1QS
	 PshxbdSJkoq7HMoFqkcWEcS0st/hv8Zovvb75rGWnFrBlNnQJhFkDSQQMhXuq/VMcR
	 6iWrceJEEPOuid+1bPb6rSunuLeprjyUORQak5BEQT9EjG+VGH+aYtUTelqme29QWm
	 jxgaQnTxUpTgbPbWrl9fqV0tTaK3Qhp/YspL5ES9KycPHCpvyND1hDKEX5rcT3bQO5
	 lhGEkS2U/6cRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4915C7618D
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 04:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168075702576.13038.18015217282237277215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d1441b3a3d11cc2d910923d680c867c395f5b49f724e76648d2239f73038344
Date: Thu, 06 Apr 2023 04:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680757025
