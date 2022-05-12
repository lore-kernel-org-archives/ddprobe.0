Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0745933C2
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 15:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652368379;
	h=To:Subject:From:Message-Id:Date;
	bh=VgOHH0/ug+MSsZXljLsv1flYe9mjK107PD8Lo/T6YBc=;
	b=JQrv8VQM6CemrSArft5gPEjO7mI6EYyUjc5XTCDakH5dN4LntMbCS0P+YDcvxGkV
	42JirXVFqbcMnwNul+YSJCP3TakUF+B6iAskKwKqL72bKjslbhBypOcUtpmMO23I52H
	68Yg69G9Z58f/L6mkTinA7Ng5Xq6m2wh87lK2p+8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652368379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VgOHH0/ug+MSsZXljLsv1flYe9mjK107PD8Lo/T6YBc=;
	b=OiLQ+qhkdHvN3do4GL0+Mk3bJYSIEI64F9s95IWN7KVz7F2V2DCjLiXHsWvGn/fb
	a5z/KMWEHbw8ZZE6k3M4EdtNLzDvFC9QHJlGNKW95KbZiw0xMHM2cRT/RK/0Sk4Dybj
	/DTW/EAMEeeLn+s3yqmbPvJjYEL3SROL1gaHZ8sk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b8d48d9a-d2a90346-8260-4f89-aeb6-6f4deb4c07b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6a4f514413df2aeb83a5d0717cf55a66f0d79fb1f2ce369b79537710a4be6de
Date: Thu, 12 May 2022 15:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652368379
