Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F9596946
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 23:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645574185;
	h=To:Subject:From:Message-Id:Date;
	bh=+TDToDjvK+Bdivvd6ISzi/pbMokzlhJa2D9q68zPK1E=;
	b=IQzqe1a90hvlOcrfkFNP+M23eP2t6mJfecmTCx88/dXh4MmGqg3L2W5VKw+Ag0eD
	SDhcirhA6ncewjJt3tXCZC+T1fp49mgyPhSWoQgcSQv+RtCmpWXg0gBrFyCZ9rEohuf
	TGN37ExKehiaAZ15+50/UuZz+3AaDuW2QyA7FZbo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645574185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+TDToDjvK+Bdivvd6ISzi/pbMokzlhJa2D9q68zPK1E=;
	b=BujUBRf5+jvm+pOHgwNBZqQcsuEnUO3TbHR0aXO/Y87HIKDhFCYqofwCZSzQBXlR
	H4ZkHSPgIFvjUSinxJjG507Szae1MaGuaOUTXTNIYb3fgSDFquUIc023urMAwInz9Nn
	DxC21v8M3yt60gJSbB+uxhJiEOJ6M8GjycRsaqKA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f23dd5fb6-d5175cfa-2da5-492e-a284-7d149d3ff60b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37d2f8c556e4ac3e487da8356351c8605483cb620be57e3accfae79f633fce0e
Date: Tue, 22 Feb 2022 23:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645574184
