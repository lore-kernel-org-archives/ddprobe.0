Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37EDC7A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 08:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655283479;
	h=To:Subject:From:Message-Id:Date;
	bh=eIC8+sJWFbhItaR6QGGNG40AT2r6iWG1E41kBcYo/uU=;
	b=R5dTFoa6p2KikVD86I9H0niq4U04xm4igaWVcjcKv7UUJm2tXH7k+cQh+1MBfPVb
	d6b2BZvLURBUPn2Gzc0WnYOrFowlwbsGaNNoRKTO46Wz4jJ5/cn3xMGJe75IxHVxxIC
	anrf8JY1z9nLK9vN4Mz5sO3HWD0Jc357VQYLNlTg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655283479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eIC8+sJWFbhItaR6QGGNG40AT2r6iWG1E41kBcYo/uU=;
	b=FNcC+z/rq9lj0z4VeD+e/rsxnqcHZUrQ23f+tNO6jUCePNewsQBjT4FIy1GTDVvp
	Bk4CC/dniEYZu7ueWXWxW4a19b+5lLbaJqsrGhYSU08d0tQPqRaLM7st5uuxSZLSKBm
	hFOVb3hsaXDK7qumRaVI+2bCGU5kwcEM7YowkwlU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181669572d1-41ff93c4-010d-41f7-8879-f8f065b5865d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 74a8c31c712b8e0db8416f251851533b7867697acf9cd8e2584f0edc1d2c2e5f
Date: Wed, 15 Jun 2022 08:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655283479
