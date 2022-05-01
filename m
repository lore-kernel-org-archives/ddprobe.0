Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C1F1FBB
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 00:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651366558;
	h=To:Subject:From:Message-Id:Date;
	bh=SQWJLLOIjLQ7NLt9WLBDeKnKNeNkaOZzQMy8ge9q1zc=;
	b=IWjhMwTd+UUyAGxdKN1/VgJ3HdTU6KXXczGU7CfhMBuhNqh+USTuR/G5ZlADJb4d
	FS19UdrwjkbcSqzE1iWOnH5yaKgdEICLawGcZ+NqdUbwkeokvbvbaD0q8KlUXZIW4os
	CDLRf1gy/EIqnnbHRRKWOaQxwXuDORfrfCJTVhTI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651366558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SQWJLLOIjLQ7NLt9WLBDeKnKNeNkaOZzQMy8ge9q1zc=;
	b=ciAE6/uHWzXzmBaUCqraS88UTqzCuH/fyNzfAfoZkdVaza7RXqBsNKFiQSK/yZrO
	Jnyvw3S3oDXQJgOLUy+qmSNNTag7tOSCbOUicBW01Npd8E6KhcwhGPsSv0UAHTZCobA
	7t5zb78wi/839IA47y6lFQKrsWpE/RcXMhgkGYhs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807d1dfa26-d4c14f36-66e5-40e6-b800-c8cdb49beb41-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 866cee1394a4148385b87f775c6024dd301734f02b76a27de93d36a67e6fbd33
Date: Sun, 1 May 2022 00:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651366558
