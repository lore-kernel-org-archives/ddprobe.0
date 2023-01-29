Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D7217F1
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 10:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E4DC433EF
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 10:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674988985;
	bh=u3uiDpz92oeGW/zDSTup20Rjt0RTmYFCCytZ0mKnsMk=;
	h=To:Subject:From:Date:From;
	b=BuymgLvZVCGpQLwmbmJn+CnRO1dtpe+inQFE7rnYKXIRRUiKz0OIek8foeVTY/7P8
	 nUjjBc2zvJ2PwHdMBii1tqfw7vt+/FllpGd2vX0j5JSpnz3ZTFpmqRyTN1F8XlcQZ0
	 CzlTeOp13yobkRvbaoecqMY/CaALnGdXi8/kYo9Bxl26aSE3ARvMcnPbZOwIv8OYZ3
	 y6oVdvL+YypZ7ZqJ7jAL6DSCLxZHoKNv67ctT/uFpXY9xCCUmstrTa1+6o51nWCEIm
	 BTgVIupeIm2MOG3YgavTr3mEz9O3Z8mRQjqEGMpjTsrZ27zyc61B3ZBfrkLuVR/qwq
	 AfcXNPLhqBuKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD826C05027
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 10:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167498898576.16399.10318535301709138733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13acbe1c91b44e3f23e7788807f063f23eba2a835f72ee3a3b660dadbcd3c5da
Date: Sun, 29 Jan 2023 10:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674988985
