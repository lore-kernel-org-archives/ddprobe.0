Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F11122B4
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 21:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74A73C433D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 21:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666993854;
	bh=5Nd/GMUB3bYDo6Grok2xs4bDxRB/vBh3ROtTRlj8EuI=;
	h=To:Subject:From:Date:From;
	b=KaP7YOMhwmUItxcEjiFvSjxcau7F43Ky+dnoAB+/DYQsplshvwntHTRmaM3RvI/o8
	 P6mVs/+Lt1m7OdmQiCY0CgPdNoSyPorfNTPkcFmvcPALH+mOhdSyo8a05wWe/RpPnb
	 4JZN/oiYyNmxDlCJ1oxU7uwaRW9t32QRybtC0E4rnKpnBgtnpUp4N8uonl2cLqMrcf
	 yKkNSVjzRaGmjCtdtWWXPCuh08TzlK54g4hWxFqPuYIhOKRKhkn6Jif26Pu6tpB09r
	 4sLhJMZWvGY5tuvaVelzbhXFz/hkDfu0fgl2paiv+vT7QGXxs4IczyfSHpyMLHcKA9
	 7cMVMvwGsDrjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FC94C38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 21:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166699385437.19424.3467474428700288638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17cddf0c8253ec5ddbe80368356f11d277ce40f0ae25098b7c093187714e7d71
Date: Fri, 28 Oct 2022 21:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666993854
