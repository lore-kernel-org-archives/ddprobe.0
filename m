Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117231DF755
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774818294; cv=none; b=l4FYpv/Y+Xwpay/pRGTlfaVDPcQWz2BaVgRQYkydhPjZ4I2QfsTOH/BqaH0SiCxGbeyjRcgBrfNI5LGMFOCwJQWGPNzWAHrTNZeduJjL5+VIvbIA0K13t/u8f4ya7VnInuFanI/TBjGu5EeEOgukHHNH28CKwBeNh1QOWpz0xek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774818294; c=relaxed/simple;
	bh=JiN6Z6IzHTxU1CgydzHHfIshwwxhW7flVTewnMMmS1g=;
	h=To:Subject:From:Message-Id:Date; b=GG462sageAuoz/AnCjKBzBnrsNWcySNrTSVbTMwZ3hUgqxaqqUxLCF9FmfMoV3+eqsxNm3PBzj+5XMImpSJmUuieO0HzXk1EjPVOyQxqJ6TCvJ3be/e/cE3okFSWvNTB5Dokqj5EsYPcdDQjn9FvuCWq+KReN1oHwb0C5mLPVq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TuChRITv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TuChRITv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B87C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774818293;
	bh=JiN6Z6IzHTxU1CgydzHHfIshwwxhW7flVTewnMMmS1g=;
	h=To:Subject:From:Date:From;
	b=TuChRITvpsehyDQ4BT+bTu0rZqauGpYhJJft+jK136AARE5d2BbHj2CVSzefot7Qm
	 FXzri294HqL/LW7fCSkPrnB2cfTzcpKvN5O2OjCD4oTBK64P3kVM6W0B20jtDlU0k9
	 AADLuXzqVk3yg0T2rKPJg4AvvUI+rZItBTiqsH5ocTZRTERIbUjpeAdSLxmcBFVWdy
	 JXfGKnOXawWyJujkOKWfoiUN7aNGOaZSVEemQrQUaF+HFSYqR0j2hboBQE2cT+EfWX
	 qhRdTZKZeGHxWlL07vpOvQG0eu2ggFPPo0QO8D7Re0sh+2do+sOD+qwZr354DLwUlJ
	 4bXA+ozVXkHnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970E9FC97EE
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177481829358.24688.11037022520272336813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ee2d6dd2eef869ae73c2c8c1f9e6c5ec3bfe51ca7149ed56456f97ebe9d9042
Date: Sun, 29 Mar 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774818293
