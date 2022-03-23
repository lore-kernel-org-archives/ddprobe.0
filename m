Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6CADECD
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 04:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648008384;
	h=To:Subject:From:Message-Id:Date;
	bh=j36FIcKzQS9QjagxOmjj7k8lLgNnnzbRMwUxJZieIc4=;
	b=dzDxnHwqjhuSL1q9jJM2rnvdQWT3XBnfaVorM800UO0IwNPeU8hSJ6YqFfGqMr+C
	EgEcTPNNQered9MRmz4x0gm72BJEA7dU3XAseUp+njTfX95R3vGHNyweEGdffi7tFF2
	0nlLM1JSUvO9X8v9zNJ8wwVoDXpn93az/nYMlCJ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648008384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j36FIcKzQS9QjagxOmjj7k8lLgNnnzbRMwUxJZieIc4=;
	b=Ne2+nzcBLaIDFK1PJUdr9BUjwf0tYoDA1iemcviQgcJGVMhz4pI6jSspeGPtvef8
	m0OP/HnMwmqDrMZRsFcyr+2YUHbtT+HdbxUCSvoDDdo2YxOBq6kmo0ghvjXoXS5brpb
	nu5Cpm0b7Pz4Vm8T5cR/EpCozqtaRpClmxObeSHM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb4f45137-f6487f80-27e6-4fcc-ba28-ff08a51604a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e1c85baa065a5b348062b1ceafdf53301d03ac078800f0441079d32cf548f5a5
Date: Wed, 23 Mar 2022 04:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648008384
