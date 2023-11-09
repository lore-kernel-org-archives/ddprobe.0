Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3595C1DFDB
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 15:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZ9fWLkL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A215AC433C7
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 15:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699542496;
	bh=btCVjaLJ46/HNNZ+oE9DPv5r2tpL9WcwkQRhdIjCr94=;
	h=To:Subject:From:Date:From;
	b=hZ9fWLkLfM3hDlp7eVBtP/QCvyMDHYe4Du+w6dzUlCg0o2h4Xh0Q60MaknMCIkB5c
	 p/8HWPQZMuaFx73I7zozUHwGNaUKKE3IhgTAzhz5yafkAis1pWFBWN0OVWLE3EWgTJ
	 qH77cn+iDN1hfOIEoPzHMvaWfwU5JZuamdwW1WjQcyV43d6a7PUmA0ZYespsvxTpUo
	 +INxWqO5OCMgG6pL9T6OUrLlnCJRIsi4hDpYe8mGrx7QO9XmJql+BveMWp/REQNBsA
	 G6L4dqgaRczM0KwptdbOtViJYka2HBIcvvEEtQm0dmle+mVN1cmGQrS44dIeVHHtc/
	 KemFqyESzjyig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E0CBC4332F
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 15:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169954249648.10368.1653520383543884598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 089b2cbf9321c089c844a985b93f3af0ab9b91f2ec8c3d03cb127df3b9f24b69
Date: Thu, 09 Nov 2023 15:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699542496
