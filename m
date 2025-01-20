Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 687AB187872
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737370554; cv=none; b=FKonM9OImMmkHSfpzTnu7k3h3LUcYuTN16jgmwkInjOspPFHTN8Pu/W57szoO778KSx9kLU5RQrLaDYBUSg6CUugMpC5fw0izFOtMDUqWWTiAa4P/nj7nbJE34I6/qKV0qlYmMR/o/MFAnH7iiqvBwSFLDY2dRd3CqxGmiPRXxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737370554; c=relaxed/simple;
	bh=NkzUmQh13iZoahl4+2KJm+/hb6HeBtZaCeE81+yJCJo=;
	h=To:Subject:From:Message-Id:Date; b=j1/KSKzX4o3j/VVctdflCoFjJ/TmCJn6frQB9Wy4Jtsx7r+yLkIqK8gq/K5zNNJ7sr3Qndg9FPxLq5ILL8/TrMooKIsb9xbkeaTPJ/K8/eZ6CizlYRcEUQfeqQYDV6k+2Nc2UJCTvzvdF76g7Q06A9qW1JepPumOO04h/kYL7ZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b1kAva3R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b1kAva3R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C0EC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737370553;
	bh=NkzUmQh13iZoahl4+2KJm+/hb6HeBtZaCeE81+yJCJo=;
	h=To:Subject:From:Date:From;
	b=b1kAva3RLq239p9tqGdOCYKprMJZZLJ2BZE6SXLKc49X8qTFzd+YQ2F2CJJ5ZRewp
	 nZ11Ntolw1gknySlcdXYQRizVbPw3EiKwcCd18Npzd383wKKluwTLqL6GkU3J5TPHb
	 dDVbL+h0Z1s/flEACbWLK564ntb71pB9+WLdntzgq0w6q6l7QwrhXwGPPrNckR0YwL
	 onXAm9woTFqc2sPHvVhg+f+UR73fclgI/BDhIBi2aiG5hAIHlR/Ur32qurUil+jy/f
	 87xuBiWg31Z7DiiTXFp5fPbv6j3OFSj68yfFsw6ey0ZnK0M3gK4ENMzKpqv0A8UZM2
	 /WpSHMjQjBmxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9279BC02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173737055359.6725.6577169214093068583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b42a01fd63b19b3b54beed5690bd511640dca652e591822d44e801b8f428a51
Date: Mon, 20 Jan 2025 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737370553
