Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9814210EC
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 03:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653535679;
	h=To:Subject:From:Message-Id:Date;
	bh=mpKNY/GdOXNgcoKz/LpsUuVhQzTdGOke8/J4ZkkvSO4=;
	b=GgUjQn6K9GjOdvTMWFh/C+dBRTtOrkf77h5Al4PStB4+qpoTD9piy6xbcCR84Ykg
	Je8uzFQf+DGoWFUnGUZeF88jV4duffSqeGg2lXfy6iPw0QBxHm+ksMwdF7LsttsebSN
	Qbb0cxo73lUhT0AFpTqZwfd9BVQLxcBSac4PGzdo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653535679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mpKNY/GdOXNgcoKz/LpsUuVhQzTdGOke8/J4ZkkvSO4=;
	b=UT0d3niLRo1eQN0E5uscyLsdHXZIFtLLY36bEHDpO9kn8PiIIMfhw31K+DXdUaJe
	nVA/STp880WteJ8eroHXPc7MbTSlMspXwILJGvHQKBOHMq6GKe92yUE9bv51JZ6UHB8
	0kG45kdWRM3NykfIP6UlfZ10q/w7PtcLm/vaF7ts=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fe682332-93aed71c-5102-475b-91d4-9e416317686e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: facb2c807c7701f01b90a96f21fdf1a066b59b015ba2632905911a0c7370029b
Date: Thu, 26 May 2022 03:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653535679
