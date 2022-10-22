Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB96820F0
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 05:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 645DEC433D6
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666417853;
	bh=D+7qekcq/nFlDIXGMIcz+Pu7gpmFSm5OK56jMShRqvE=;
	h=To:Subject:From:Date:From;
	b=r/8eWagQ/dYXDDULXB+9uJy+Nt6TjA5FW4SgRRZdVIqgW/4ER6vjGnYBElTxpP+BW
	 b8WTl7K/dahAE8VqG8E3CtTgEVTFph8y/rdVFYeLV4645hV6WrL3leUWHRiRQV6Hox
	 A/ynLo2GHkNXpoRInODluzJY8S94Au+IjDC5CRMRP7B8Mmw39yFH381jwvUYcOqQJ7
	 Yyl1/mjQjj2TJQpiZGlOl+Nx339dnqjrQooNklgPyowKL4xsz7zZ1pKdHzNzZ5mzd4
	 VcBLEYE9CNl1uZ8vd2xcbmBtQAk/Tm5t/PCf+bF5SEFLGN97kPyaIzsRdiXE8UwTsw
	 CaeQpcdL/5Kog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E7BAC433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 05:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166641785331.5045.2575111114893908949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 192865344dba543f5ebb37ccd67cfa014049cd62d4184b099d070134653806dc
Date: Sat, 22 Oct 2022 05:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666417853
