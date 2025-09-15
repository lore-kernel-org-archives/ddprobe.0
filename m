Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E1C286898
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757960394; cv=none; b=Z+394oM3ZPsVJnmXv2laCxn5l0avamXWDo3mr29FIssOWdLhVHeezRb7EtL9hXKfFZa5ccW2sbSg35tJltmUt54bIjspbTj/JIh2XLBJlC1wpDFRQUBdGhuW3+h1Wx1iQOIGGIgjjRfuJVDlKj8cUiLqdsWrJrYTuM38cIkyH/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757960394; c=relaxed/simple;
	bh=wqyP3FyW1nuEatpIFALQAjg8lRWK3kE74HeuWdMNV7A=;
	h=To:Subject:From:Message-Id:Date; b=TiJllM189k7KT6JmTPjGiMRcJ/WLxVL2vOfJpuaVsX27fpkLpbPZZHs2hqbkrY+I00eY4VJwmopMmDF963eNo7dinbI65nItlAQD/fFzQXNeKTdfDysS3TJC+xkB+xNUrAujrXC2ZBglI0nD8kKnQBJh/7s4lZ1xXQvz1y2D6Qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YtxubBWH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YtxubBWH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2514C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757960393;
	bh=wqyP3FyW1nuEatpIFALQAjg8lRWK3kE74HeuWdMNV7A=;
	h=To:Subject:From:Date:From;
	b=YtxubBWH1Oo69w7suFiVC4ScR7xs+i6XoiDWVbU+3fGl6h3Eaf+Jtue9fFa5bsJgb
	 0D9gwPXm6mTTnILVxkE7oMwzjegHfbfOLvVTVPL2ayEHqDq5hjYgIgv16JlQkY4jQS
	 YFee81Jaw0qMT2A0mIe+tBZz+MR9nhtVmfY8Kpt5QslYPOpumbvUO7mAJj3/abfVwc
	 zIHKLnidhnlPKpXaN6wtJJONvtDtjyiKGFWDGmRrbfUnFQjhc7StAgHdLNqCbaN8XY
	 xUF8fC0IWXmfiNvaKhtYVcDoPgbf6byHCJYcwm0DcdfQlg0MzBKeJz2e/ydg3GzvE7
	 iE8SvnBMtHjkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91258CAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175796039358.4734.11621334897273827112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6529d18a956e141fd7ab13f0b86b6df231649cb4178fbdf973b2e605aa016f3
Date: Mon, 15 Sep 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757960393
