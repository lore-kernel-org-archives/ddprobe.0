Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0630C7C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 08:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654850639;
	h=To:Subject:From:Message-Id:Date;
	bh=HB2NxKbHCWNicX8lCHREkkF96Ef3MYGwEfFjQJqdBTM=;
	b=iZWbz0XjjU3jHTObk6gMIgmOj5XuIziqkUTALM2HW3TJCLc2FqJefZvvD0NvLzoJ
	A656FYzSVVvQwwbJz/jtS0qwUYQYNFfxgY/fEaoLQXIDBn/9nBnRTZB3uleQ9FpgViN
	C0710LaS6m7dywJxOB12uOPQ7Dx4/WuBiv4VPFkY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654850639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HB2NxKbHCWNicX8lCHREkkF96Ef3MYGwEfFjQJqdBTM=;
	b=ZvpN2G2nc++fcknCxHVLbE5Ia2+Mlgr8wd4H0a34PcCRDhYxGSI3GrQf2SKAhCky
	6uefO4aXDs8z6kIR5o07l5/EgnAf0INmou+XZjiitD7MhhXbZWEGtZcCFGJAcogR7tx
	Yg3hwjs3nVDeIrKdOlyUiwUATuK3lZ/KGYFcirdU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814cc8d5e5-c4a48a0d-9722-42d9-b1f4-33ee767f55e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09403e33d6346240bed00eb67b58711897589c5414f54342601897154f638ee6
Date: Fri, 10 Jun 2022 08:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654850639
