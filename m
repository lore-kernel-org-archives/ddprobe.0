Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6310B37F302
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786188034; cv=none; b=SA7OcLOhG+zvxd/2wHbx46nfraLla6v9pEwaaEUZ2BLfJPc8KUk26la3MGOy6euY9YRV2tO2GJU4Wk7khFC3zyJ5WR9agxhbbHwp1kSiVoPaayXXlHoNRzeqGa9DydumoP4y1ktMNIvQqVU7qnDoLd26LsubVrn7hr2JctUDBdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786188034; c=relaxed/simple;
	bh=Ta4IEpPQx3lndppZ/VRNQ/PuGvy1Cqno6BijaVEyuXA=;
	h=To:Subject:From:Message-Id:Date; b=rkxJEXYgim8JZ9BwmKiN0OpTrWex5JTvTvNTUQhB6+aKCWH6ySHVruS+tvwKNdq6URzouN+CFTncFcduk8RftW+RuwX/Duc9apfVOT8A7fXAWWmXH22WimpN11mNPzA2M8+3/NzXvA5UtOl1+g7FkQUMkFp7uf0twgHL/RddFY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vga9Kvmk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vga9Kvmk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5B23C2BCF5
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786188033;
	bh=Ta4IEpPQx3lndppZ/VRNQ/PuGvy1Cqno6BijaVEyuXA=;
	h=To:Subject:From:Date:From;
	b=Vga9Kvmk4aD0IwTHOVgHZBk5xw1bB5r6r3Kqy+opMkJhEjhwFL4oyOjQIabx5CuBK
	 fon6tT/DQyJZyvSOIpeHvYV2wDI+CPZZYwLOcJw5UpzsR6vYxsyzBg6Qzq858Z+9T+
	 qxPOJnKWjDOMj57GicMdDgp+E6eOGHakTW3M+QPsWDPBbhtzH47WnTXN1nPca1URPw
	 /3RK7T04mRyKeDiAKmpTjDwDKN/YyCju7gdv2eXv5vJKHX6rAt2eCiIYUM0weAWFaE
	 UobWYawjLK40dNzADv5xanIkRDgY6wjd/iSTndYGZPFnJCG7ebfOuwnyKVmRpbprF2
	 ukzss84OtM87Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A95C55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178618803374.15612.1199032307256469666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1897377dfc5813504821eae27cbab8dc69e568ba9a02677f024c50901a4350a5
Date: Sat, 08 Aug 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786188033
