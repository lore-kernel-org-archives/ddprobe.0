Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB3847C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 14:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656166612;
	h=To:Subject:From:Message-Id:Date;
	bh=tE+pRZCUTUOjzaXKJ/Ykmpl761XWdH7rrqQCOQtDn80=;
	b=LEizKKYdBqmPIKn4dK6dftmGNd0MdN5ZgK90rJX4OTXSkPc1488rXFw4l1EbO/sl
	9gZzAD8Iah14FLTETKXJyCZFr84RpisIfML3LS6v0y2i+guBsVBcun2KDCLTVRGzpFS
	tgmq/ZPpob6jdLK1gCvjzALUi9M+HhtmXofRoC8E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656166612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tE+pRZCUTUOjzaXKJ/Ykmpl761XWdH7rrqQCOQtDn80=;
	b=RbRWc0nUg+9ugBp8T1umxceFOo6DeZVEZCjJyO0m5Rkcu/hyrpWa12Dv5u/Cc4H2
	M5AZKz7nh2Y8SdWMMBE2uQ8yKFEIw0eaaUmQcVlN9rvPHnYoq5fsHRJ6Wr+G3e2SboQ
	TRNaMF4EvTDdX3Uhm6GWiTzIU1MgbeuP7qcRjOvU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819b38fd3a-fca852fc-040a-48db-8de5-f811aa02598c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d69b045ddb7f8f061a444ef1b23f46e79d6a67e031ea7025e8ebe03fe76fec99
Date: Sat, 25 Jun 2022 14:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656166612
