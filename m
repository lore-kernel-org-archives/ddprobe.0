Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 616717F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659365452;
	h=To:Subject:From:Message-Id:Date;
	bh=48d6Xwls7Y02ZVxP9s4N6Qg6umjYE3qeK6M6KGgrw2k=;
	b=IGVDYdRws/kkMi1kNgtvNWqDJo6vBiM0fZkU8BPRZFYvVoYqAT0jwTJldBVVPJtR
	99zYpMbmRXcanE1mgLaKMssdC5GcOIZ2pZOlaEe5mM4y9Tqief/9qrsJjLD/Gp4s+sg
	Ckse+iyVTne2nBFASl/zf+NHpMKXRsyrMHx//wsc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659365452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=48d6Xwls7Y02ZVxP9s4N6Qg6umjYE3qeK6M6KGgrw2k=;
	b=UsfEIq9qcslrvQ58bbd1DSKGOziEMQPuq3dpS7M56uCAQq6IuBjOXnPCK6Rb/1E7
	COGenALk7Ff+ggOjA4PpS79t6Dmc9w7FEUBnXxrlCxMrm06MrXzCUzo6GFN5pcAY5bK
	XlTBkTek3WQWpFlHGoSIi+YBsVCDDhK2yJQkqQ8c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018259e36b08-f3189abe-3d31-4191-b873-8a322a7ed0a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4bf50dc966de6f6f40c396bb177f93b13f4dd7a8100b8ddea9f047852ab77e05
Date: Mon, 1 Aug 2022 14:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659365452
