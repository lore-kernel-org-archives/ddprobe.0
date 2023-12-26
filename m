Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E881E4AF6F
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 04:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DztLYiad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A751C433C8
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 04:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703565496;
	bh=0/1OQI7LGZh00nM/1c63ODpjQBL0CWCS/Ys1VdchiBI=;
	h=To:Subject:From:Date:From;
	b=DztLYiadtfOk2TbC8nFXrnqvk6E4pwprC3l0IuLbvEbVqD93xhZFjkibHoSLIDN+D
	 2dgfsqUvVtTIwLe+F8HYq3rZpr05GdmERD/u831vRrMfJm8bzxGs7Ar3GDn7Ttw007
	 DpHiIzzZ+MJsKIhyQoZhKFHiHbZa47D3M3UiZjrzmXpxsdGaplOOaAWHBzeUIpST7e
	 8mwGzBz4jeH7xhx8al08NTHV2hNfzGCqEy1rj3VdpD7Ogn/0piXcPonTFg1n4nhWp8
	 79FF8d00vltnTE0St/HBowDkO2FrhuY8HjnOFiOjZD3K8ywpxEv1ljyXLKlSkdhLIh
	 dBVNB9+X5GmoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 684D1C46CD4
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 04:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170356549639.17628.14101198148085262626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46c7bad4c1393c8b42a47cfcdc67d69d4c46d4aea4408a794aece273c8873824
Date: Tue, 26 Dec 2023 04:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703565496
