Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AEAB7A
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659925253;
	h=To:Subject:From:Message-Id:Date;
	bh=TeVd9R3HyTqVq8t/UWHDs/Fw1gs0zXZHrxgx7ocwyjo=;
	b=VXS3Th8NVL3emL1GnEMa7Xp39f5aEIbKOadApooJuhNCX/azYr000svSEWcoJqs/
	xmOPnBwv4QFvgaVvQ97rO8eWzdpKCIdzKZYaOIz/mmwwt83Q5doV0bH2BpXXRC+o4bz
	7Aev93C/apmochRO4MqsXMXxFDQDJZ1EE4e0wa7Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659925252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TeVd9R3HyTqVq8t/UWHDs/Fw1gs0zXZHrxgx7ocwyjo=;
	b=eVRPSQ4xgsYmqI3L3rbXkmTbA9MoPO218LavJIUkyM1Cmu7EZOdRbkbBELcF9eMw
	Nq4yL+i3GZ5mER7a7oVah1rd0Umz/v0DqYCPKtTPcqdNT6OfhK+j1oAc5cMAVCBtRSN
	5gVpEgJFmwUzOclICP5uPvFM5qiaoQxACIZMfkvg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827b414a15-15554111-1d91-49dc-80a6-455a2ffccfd9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f79eaca02bf2169c5960aa4fd2a3657ccdbdc62a734b335bb1d967bcd645abef
Date: Mon, 8 Aug 2022 02:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659925252
