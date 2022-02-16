Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDDF11844
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 03:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644983485;
	h=To:Subject:From:Message-Id:Date;
	bh=2dRAoNCvvSrTSffB/vZvpuUVSfX3CVmuYainKtLbi5o=;
	b=HLD9Zfu4+TIGqwq/AQpal6BWHOlrETYb7ygS32vKJmz2pg8kQNowyJ5HRipODuyU
	H/Cle75Cn+GATfsloievGL79VtHSaDTJw7IrXwS5EeZvXusDOxHdi4OEskpjFzqD4W7
	1TswSgjPhyC+oYYs0rMvEUjCPEV1zRnkcjeiTayg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644983485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2dRAoNCvvSrTSffB/vZvpuUVSfX3CVmuYainKtLbi5o=;
	b=MLbvB7DU+pLxX8xr6WFVPQtWOp0y6VRLMP9zOSE5OtsFOyD7zHT/Yd/MD1ptzqu1
	I34EBhplEOk7sdYt61Sw0Q/hvzNLzaou2Cq9YUM+AqluqtRE9uzYjED2qXN6Jf7CxVV
	1rNWsS7aN7bWxok8faab1UZvA0gV/43GuQVrPAps=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f00a80146-a67b351f-2399-4ae8-8bfa-0a0d3f181e84-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98d1a026d1f1aadbf697a3072afbe21169c824ef1e931c0e71c64a1a3b28a833
Date: Wed, 16 Feb 2022 03:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644983484
