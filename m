Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16500368DEE
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 18:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763663514; cv=none; b=eIjFW1SiFSRgBi89m6Yva0iwz+yHYuSVajaEnnVULpcRDJCOX1TX+NhInHMSOzNSlNwCNWeiDyx/7JvcVoDYw+a3knh3AV/VWE9foNHwV3X16xGIJHrfx0XLojc8h90dd0E67e0twgUrc0E1tTXkXjlzf+Msr8WF4PmpMo5McOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763663514; c=relaxed/simple;
	bh=7b/TX8SlKOmYCT6wxCmkn7tmzuglDghyT6UwGZk6wZs=;
	h=To:Subject:From:Message-Id:Date; b=le6hJELnQWJ67RLONpVvg2f3mQUdEpTp1mK6WUkYLWn9WjjMH+Png+bX1t9GHyv+4H7GOX0tQzHUn8u9Dmuu26NgfWN56QbHkCXDGTrB2xO4tQoevQaJy0v+CnWqaaJ2v7IVhwSqznUHmmOBewAZrwPqZVbAGr3ZEellRsOIP74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0Qa1P1X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0Qa1P1X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA073C116C6
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 18:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763663513;
	bh=7b/TX8SlKOmYCT6wxCmkn7tmzuglDghyT6UwGZk6wZs=;
	h=To:Subject:From:Date:From;
	b=G0Qa1P1Xp2dSKlv3w2P9og+bciL7HFBCs41NRmTtPkw/mCiNNjAvcBe8qGTaCpPQK
	 QAdMcJqt/UyqKXxeYxGbcqd1HtsZthwwWK406i9GTi84PoRJSxyxYWvBIwM12rDVxa
	 vYoEwjT3S0hjdoiX8BwejyMpXdngpXh570UaeW3b3RTxZkv39v7arnCIDkyRij3Mnf
	 +palwScdwjh3LqQ6dsc5TlBhiUxRgDkFuHCe4Vb2mwI5zd+UTPpXDFyMOW7G/8dxoG
	 pbHFmq9QyZjkNaaUOHaGTMJnHfaVyKsoo5KNQAEHkWnpTb6yGGQLM4MtfEBCxsaWkj
	 fNQ2EoIO8PqnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9259ECF9C7E
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 18:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176366351358.29547.630305260424525769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40c421b924df915ffba3883e4cfad132ce825b57a72ba1e74743382436bd9210
Date: Thu, 20 Nov 2025 18:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763663513
