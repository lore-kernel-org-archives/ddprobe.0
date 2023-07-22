Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4174E366
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 18:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C202BC433C7
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 18:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690051928;
	bh=ajDye0A5w2Hv7ZSBxquiJ8gXzv7Z8rsAz4O6Jngwr08=;
	h=To:Subject:From:Date:From;
	b=SvfQa2nEI/l59SOmOpPJ4wqECA2KlQG3GmgjNM8wo25F5mSZ/uep4dMs9jAWDlsjx
	 8BD5pTS5mXcjP6DQeBT/thZj1PVmpKwIg6oW5znqiWtwphMrWt99/mHYY+/gwkOvck
	 Bt8OuxGBQib3axe0DReciyMbYDPR7JOiDWRFgnj3FiXcy0L+qIVjgxRKqkRK5Jod6M
	 vWNeXc23BzeN+r8qHp+7dRWqKb3St4/JAl+UwhrXsLl3xHwlYAXFB8hNVJHoL4u4/R
	 PSW3eBhd2xKIg+Xm6H5VLPhzVRt3Ay64LtmS2Y3wLfdHEBQNKoNk9/NZdPMt12HhMK
	 o4ObHoURyiXOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A581CC001DC
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 18:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169005192867.1050.1845609747663267208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc003db110b39a6014cee15e534b5f9c0e8ce8f332922d6d834764de095fd0de
Date: Sat, 22 Jul 2023 18:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690051928
