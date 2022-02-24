Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 655951373
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 21:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645737384;
	h=To:Subject:From:Message-Id:Date;
	bh=JM/yfUYJE1J5fW4eWX53Utn+fYXi86M95tbGCN9btxs=;
	b=dE19TzBnX7eljoQR6YmG3rv/IEnMGxvq2sSOA0v67UTd3uUsLbyMpBcNUGEFA0HY
	Sn36i3azEFpIb5N8MqWPuwX2OlodI4kYkN7IcK/FOPKygWp3pYVnpOFobmL0l7BIW9W
	Ksi3CbGO8ioaoakx9nBdq1a7e5Qa+Kf9bQDwBJ5w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645737384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JM/yfUYJE1J5fW4eWX53Utn+fYXi86M95tbGCN9btxs=;
	b=ihdgNG9a36cFCganwn5YLkq2jODdGlMR/DXq0jS/EsHLiSUlLoUacwFMFMbMEZZg
	xzPs/1jznTHbCv/3o9r/6qsZ1zJxOxEAffpshyJ9Bv9Hgs8twfIoS96izu1ZQBBIU9p
	aNLjsuK7wDcPJRd/lgadic5ArzZ7/beWEur7FG3A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2d979b47-559fd42d-dd56-4c3c-b8d0-4ecc4e74c4fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ea9bc6723a83036b7d98ee0bf8c80b6b43987d8c280a4e6ae5c840013f2581c
Date: Thu, 24 Feb 2022 21:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645737384
