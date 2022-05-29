Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDB2715A6
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 05:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653802559;
	h=To:Subject:From:Message-Id:Date;
	bh=qz3s3XkSm0JdFO0Aru0bsqx5DrojnSQZde5skGgK3II=;
	b=VVJ5GRHIjNkxlHHQPylKAvzrN+aaqrd1THvPpFLZhPLfPtHUoIGxyy8ZOgREdJsy
	5FgwNUiEnoGCTLEIt0f+eqsBoLLG9YuS6FBb5g3092b3mke47d3uH6o+1uURQ+Dwui8
	DmbyKiUj+Isptxvdq8g5bnR9RsXCRBaxjmPj8uOc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653802559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qz3s3XkSm0JdFO0Aru0bsqx5DrojnSQZde5skGgK3II=;
	b=eFp1Bj8iXpQfsielb+PyOODYJuTxQGJXQJijdJZ33XqgeL/iw8DAp/OZYr6v5fHB
	N2LmqnJKRNxAz35L6M7C/pmzFPkVT5hBrCQZ+EN7Dt17I+GeWyx+JMsNWc6Tff3ezsM
	QpvMVc8UIqohhi9VofxqvDASg1Z3WUIYIandxC3U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810e506715-c969534c-a019-41d8-9c5a-f90b48e5fdee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab136f97667348b95c99dd9e8e3987658580a2cbc43be77590b3f135271b1a65
Date: Sun, 29 May 2022 05:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653802559
