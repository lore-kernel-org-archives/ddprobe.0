Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BBF5320E
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 21:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654638059;
	h=To:Subject:From:Message-Id:Date;
	bh=Sr4josK0DIujOWdxIKZlQAL79HnigR0d+YZ2fUw6FlM=;
	b=Ga4SUiY6FF6r0tvaJ8tCdYJaa6fXrCWrX7XHwD3r0cNh9AYmSaaRqEQfgE1ppxsm
	3fNGTNxGmi19ovvAnF4MJL4DGf/6dMX9dlB6zdKdTVwghmu1XyMJIqkFx4TsYYPOzk4
	59/CjbbX2zGDFb68DJF3rX45apaMLwBSetTkfIRM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654638059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Sr4josK0DIujOWdxIKZlQAL79HnigR0d+YZ2fUw6FlM=;
	b=KV9zrAAwd6qbZTcS6udfRoWh5/y4K5pcDqbfGt88KzOdqvlUbDT+jArfmjDYJWy/
	RxZY6FCgPo3a8h+rTaw2GoSywQEGGEwscg3mSxS1GV4ZPAwv0sxNHkikp4sWkSlMy72
	hnaRNB/JWiaI9I+M8zrv3EgsW1bDxtSpBt5CXrUY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181401d1f37-c98b68be-2cb1-4899-8422-594d4fad40fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09efb764ccc7afc23e430144cbc39626e70b09b4038304fe61488cb21ed89edf
Date: Tue, 7 Jun 2022 21:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654638059
