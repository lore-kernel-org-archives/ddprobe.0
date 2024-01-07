Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0094310A0E
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WCTF7rxp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AA09C433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704596296;
	bh=XUNdCoQzS/HPhQli5Lde99xYHD4+SW0HNkINiyX45lU=;
	h=To:Subject:From:Date:From;
	b=WCTF7rxpVHovMMzxowNF0qPxGsBCGF60QXtwVoEHbti0QVX1zp9QrMLgFlMXjTgYr
	 8smwanaeBq25WZ00i2Hhz1Tk4AKxiLQlyFMCgVACdIJ5mqrbsjO5D8k2e16Bp8aAoN
	 4MYSNuon9HymAV+dXYeSE+8p7N0LVZ5KRaXpDZtur2TKtKFPEFw3I+qLrf4hzuiOSR
	 gkbr7Z2SSmv5JE4xUlUMrVbwX1JmSGbYONLHKSg1NGLo1NzLfsiKXhcUdoLzeI3uu1
	 Fnd/RzXUFodqIpmPHP3038BrePacNp+y6GaCbzMzyjw3rfUc+l0+lqJSnM5R0uTAgQ
	 gSeVHlIU/6/zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6083FC46CD2
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170459629637.19790.3427266407469483301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9aabc45c7e8e40cd0bf1dfe74b5a20019a8ef5f34731e97a8c6027203e1169f
Date: Sun, 07 Jan 2024 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704596296
