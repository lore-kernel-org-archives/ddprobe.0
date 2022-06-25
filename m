Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5FB7A
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 07:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656140812;
	h=To:Subject:From:Message-Id:Date;
	bh=4NQXaL/Vy+TczS23W9lSu5iU9R6Hmn4LDL2ja43Squ8=;
	b=NCJXVt6W9XMqRcbk3K5xACjjW3cVSWdr13ecpjE8Sfv47tgwpz2JEeFzvAeZY+Gq
	I9OsCHE1kVS2TB+anXu5RAePOQXhlLOw9Q5SLvF01QstrpiGubnUcBoKIU0jRAdu4im
	BrTtWrAAv4IE9/IkJW8nsPg5Nf7U/xwdAQXqnpHg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656140812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4NQXaL/Vy+TczS23W9lSu5iU9R6Hmn4LDL2ja43Squ8=;
	b=Dp0HW6np64dbeAq2MWE/8B/+DQM6nrXiCuxKDWvcCv4LWIEPhja+w6MNUxGFuEIl
	nNtuiKplMUyYKol9yHyPVcHJ4rQ1ZjdS700ntJYnsrZg0G1s2sTkGcB9eKNwSwKgB3n
	C2Urpmrugc+O5iCdOW1YE3eAu52x60y4qBUgAR7Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018199af500a-83919778-21bc-4bc7-9bb6-06562772cfba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a96cd60855e907c13ee0374518c7beca59a90f560e71f74ddf40a9cae830c671
Date: Sat, 25 Jun 2022 07:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656140812
