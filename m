Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F58221DB3
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 18:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778263654; cv=none; b=ZDqt0lCYNwCWyLouabQO2i0fsZlrpFnXi5bcTcxHcRyIIBoB0fCtsEBB1FR77M3A2A7CePMVKMsfbiyJnl8iDoVqDGFx439kijXSMHvFF+v1P4MLcCX+PZvMnZUyiFxeEnU7s/4iCs22S19rRJsOaKW5DLkQ10TrHxO8QB24qIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778263654; c=relaxed/simple;
	bh=KcZ8co5b+F+WEKVo2PMpNy7QRMKGjYUX9FOPJYfq1HU=;
	h=To:Subject:From:Message-Id:Date; b=LTJRwOOAUtwPBhApf9SvNm12Y4PRYTnV+8XJFpUJFlkwSzcvjbKwaY6KDOzKjISditPm4vd7CKILw8R5r4oaK7JdY2Nl0XykVNIhZhhCLnMGlulPiIxTSEwHD+WRgZRYmBbeOq2D6hNVi008kfNKwAcb88baOThbSLZjoaaEMUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nGjK8mpg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nGjK8mpg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD5E1C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 18:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778263653;
	bh=KcZ8co5b+F+WEKVo2PMpNy7QRMKGjYUX9FOPJYfq1HU=;
	h=To:Subject:From:Date:From;
	b=nGjK8mpgJ3cMA6pfaFcLAFGh7qnGkdHAVPlOE8APrro2few4d5EZ61OPNq6PbFwq6
	 PfR9Vidript11UI+KWK7lzGmtnv+4RHqMXDenJQqUtpdjq7lqUVq/sBear4hJUGdnL
	 cxnRNCIJfLFTeidXfBukQkpn3/kze15n+5z5HfATJ2hoOANeHDpelH4YhszZe4Ir6I
	 W/TZMBY53Swncl0Xhx6isfg5gejAmJNEC+TFvb64H5EI1stbS6bxadg5lIBhBIpYzO
	 Lj2suk0W/HxcBWR5y2M9x06AchYkbAj3m7V0ISAEi2qwrV2TL55LcnbYZyY+AjQRCX
	 2xuI/V9SvrYSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADB2CD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 18:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177826365369.25977.14533820321504434291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de73ce0ae8fc63a45b8305e7530dddf9aba94229fe9cb22660e4af676cbe1da4
Date: Fri, 08 May 2026 18:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778263653
