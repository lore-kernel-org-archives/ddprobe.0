Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6FD28F6D
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 22:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B41FC433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 22:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671919887;
	bh=uBgKehhPRsdxUtvUJlBBNLrTgvBvVSNitwROka03VLs=;
	h=To:Subject:From:Date:From;
	b=IUy+cN5T/66d2X7s3asMpvAbDYVExl2QEEBL6zCNs3uKv+OiQQOJMDbUp2G351J7q
	 Dy2++nr2/LUHKrOcOIHSsrE19T73PErLEQC9kCPhfmTpOeBPBoiSgKcChhFeaIFr3e
	 J85md/nGikIu+eb/K6wBLmXonbiMN+DrxBt6MIjcBuBUP+4sN7OYqGw9iGgr0ZgS+M
	 HuZCRh6CipY4xprXrRZSAOFZmD9TFYGxpP08muNOIXJeVa7vQlP7KCTzYf85fc9kXV
	 M4CwCiDChQUGyZglw2ZMNtFVngW1PoZGCSf/jRqUc3JDSUvdJ+vwMemRKmvDA+I9XQ
	 7Y0juEwEPnxOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69E53C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 22:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167191988739.5258.4499130757070610191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c117dfb6bd9506740be42e9da6f63abb2ebd4fc4125decec9eb9f7f1428c4784
Date: Sat, 24 Dec 2022 22:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671919887
