Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5436810944
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IIdfhLnr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B71C433C8
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700300896;
	bh=YUsGxazGl27LqbQraQx712yq/n3/7gVX4rP0ewKHnbI=;
	h=To:Subject:From:Date:From;
	b=IIdfhLnrodKylK1Lk2sGep8+1BxS4BOCJ42iqYBy3ucl7nEC0KOf9g7cKHKAQr7n0
	 jNbHFp+ZTd1xo+rLoPc4fw1lUWju7pFyXif2ZLW+E4GdJ8jEiY2jDPyLEtHQElNG+z
	 G+F4xfOltNuBrbLbn2Gaf+frkAkKTMAZ+2tILEpeTpNWYunthJK14cNvMBj3/t1Kzl
	 ccB41wLvn/9nuQX1fgowqoxQzJ7vv6pR27Z3WojDIcN/zafq+hSPEjANsiOPVlL+po
	 fc04nHprd/HXeElkfTmufvcrNBqH+seqeJqtC5wIGT9HexB3iUIKX2BKKZcHJi2akB
	 0xGRINsI4KtVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8CE47C2BB3F
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170030089652.17651.14410546103708578096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8065d5dc7c5b6c33d79a62409fc2243f9fc35251987545adfacae43b0cfaf06e
Date: Sat, 18 Nov 2023 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700300896
