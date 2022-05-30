Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201EA17D0
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 06:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653891299;
	h=To:Subject:From:Message-Id:Date;
	bh=XXppUvbJTesho7NGm7KEP6mwoF5zPxAg9ZG+ZIVYRuc=;
	b=KFSuZHDVEuXyziITXECboyYJK1dsrti96WTFyawL1/ajlYyxRlaSdpvFyJzXJUmG
	yTUnZGcoS2JOlmvGMMuyqWH8yrDG7dbhVMXXJcvT8sp16XYrJ1/bRUYhOjNLVa0vBEv
	oJkRJB0zufPz+0mRdBVVHNbmVLtaGXrOfcqHr7+Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653891299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XXppUvbJTesho7NGm7KEP6mwoF5zPxAg9ZG+ZIVYRuc=;
	b=auBqShodP8XltldERGvzAS98PRNI5wQJCfqaaNRFn6LF54JZ4K434/z50Knw4bBI
	1dctoYd4xni8K+1Z4O5VG/K6R7tAFd+sNF8yMmWFfHayVCOcQ81y3LU0nC6qnjFQGY9
	3Odr6F2/hXT4uJYdubH/RxOoigefrTOPOrwysVpw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181139a77c2-f719499a-f682-4429-b79b-3281fa6ec8c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d59e39fba10d7723183a1c06a7e7f9d41482d1b1d3b9f51f022c2b03e34f176
Date: Mon, 30 May 2022 06:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653891299
