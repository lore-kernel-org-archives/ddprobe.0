Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF3D72F53
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 13:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655473499;
	h=To:Subject:From:Message-Id:Date;
	bh=0V5U2WumEq/IbMEQZFiD+0DZhQBXlisAbmAiN9N8ZBw=;
	b=Uz1f3NeluGMBClczZ9Qc8nJO8VVQLBd3GfCpdmhL6y160bTimM/axVs583MQsujo
	/R9A3XXz9VcEp1o1+J0PHiBLWLIjH5u+D5BYfHQBq4HJt1J6X0FMB1A+wip/NlNUb0T
	eCrdgLzd82xZY+e3B5kBvlx+g9ZBpMWspB4AM0o4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655473499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0V5U2WumEq/IbMEQZFiD+0DZhQBXlisAbmAiN9N8ZBw=;
	b=WAZ+O96DbNJHoF6f3ovbhgOWZ8qKcOlfrH3iEk5dlqrD+++I+nhpbfi0/XiQl/L4
	8S5fZemmQu4YXh1bMahv2zTXnjhUk1fEPEeu8P6BCKPjTdik41I5fiKIB7tva0WM/aK
	rw04hKJvRmcNawpgQFSSpd6I/rGPloFiYzEZv0pU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018171e8ec5a-8ba6c608-5267-4157-b774-e02d8ce8d407-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2322b8dded83cf0aa089e975502d891c84618b68d902f08be6d1c38dc8d052ea
Date: Fri, 17 Jun 2022 13:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655473499
