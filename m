Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5102BED1
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 07:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6C58C433EF
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 07:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683271025;
	bh=SLRFNK7cSddjDTnoK3xdTEQGGHIfWnkfc+yZwH3eor0=;
	h=To:Subject:From:Date:From;
	b=fKyIBw/dkV56cxDA8bJTkg3/LiGiUFjCetlcAn09l52YGT8q21rI+RzFXdx3qH3q6
	 eh75EYIPQaMT0MlyCi519Cbxq4F62n1BSIwUI5++RzPqTq983Jyjx2lrNy2l2djLYK
	 C2UQKi2UsWEULwsUCbP10Pw1LyhoQALscamrFG0QWfZRXnOR8qDq+pHrOCh1ndMjeY
	 UYM89rdH7Ztmmc9gppma3Ikj+UJyVpn4bjCrsfbcSvPzf45E+dwIjuGz+HjHpbC/YE
	 SeYKoE22T5tLxF4wdGi0jaGZ7XIkYwEYhPFgRkClQ5Q6fhmSIjdHrFmbhmXCAwoctU
	 Dj+vpgW+vJElA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D0AC77B7C
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 07:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168327102578.5858.11534233546530144529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cb2fbf1df15e56653e7b3e26bed195b7ac9be6eed902aa80021c478d7ab39b3
Date: Fri, 05 May 2023 07:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683271025
