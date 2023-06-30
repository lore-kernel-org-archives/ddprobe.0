Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 683D4ED5
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 00:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD993C433C8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 00:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688086388;
	bh=jqgblKJU7f14EIWomtY1SOlnwcPnjgOStLCXaE9ua2I=;
	h=To:Subject:From:Date:From;
	b=Z31lr49g1ZYpYEvMp7Do6z9uUcFzNGgn5bdQR3yhyHkCHcE6zrniZ7OR1SrMovimi
	 GAx2+8p6RYPEFbPl6LTRtimspyd/voH5bqdbS9PSCAqrcNVJCwWBDGYtc0/Jvdhs2d
	 z1JogwFmwwlVCzMv1xfs+HedaXLXNoutHYtUbWAWeMeNHePVMKodeaj9swkmJCDJoc
	 ZUEUu/dVs+ul/CbbkHhGnjygkOZloL+F0ZshivDHD/yhD2z+RqHdXCIuI40RKXgbBP
	 vsJsQIDl07DQgh/DMp1QRa+AWWrbfGm+zqtJXCtbWnK1lJ/OmuYY1aWmozOF03PZSU
	 bGk3KOR2Nzlzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC223EB64D9
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 00:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168808638876.27404.8106491152577251164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29ea575fea650f7d6129c03105bb1297949c64e31d9ea671c238d1ff4cb8727c
Date: Fri, 30 Jun 2023 00:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688086388
