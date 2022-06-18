Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02EE47B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 21:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655587079;
	h=To:Subject:From:Message-Id:Date;
	bh=4GquNYAejO2C7KV+seXI4VAtRb+HXmqAGZTunn0kn04=;
	b=UwSIk1/mNVdRc+c0ezMYuUBwu1pgHMJheHtgdWP43s8gVRg+nQ+TxBtLt4RIMcZ5
	jOHYd7cC7VPKGtxyhNJZWKMqbnOoBN+Cu5CVYPB039RSAefrzxaYC8bkVAHC933NW+o
	hQnJjXNqDI7qSv8qXmCtI6xBNZUsmilrNE6E+8CU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655587079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4GquNYAejO2C7KV+seXI4VAtRb+HXmqAGZTunn0kn04=;
	b=kZIfJ/cJ2nYjCd1Ax6TIwbOF1bEw9z4JjU9yZL87PCxeXFXPxrGSLf4UmFFGFD+J
	aFKnIjKr75s/Ij9HyNUuRMO1JOCThEVX0ADnjS8ZsIHFJKkmZmwVYhtYKzVT1U9P2PM
	zzNBy6ek8o0W6BW6VdNss22NBsn/X0ZccQTdo+00=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018178ae046b-3df2253f-8507-4366-945d-fad65cecef6a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce0bd2812042d01c09875f4bda19ab9daa9ffdc1bb3c5791e707bb4833a76b5c
Date: Sat, 18 Jun 2022 21:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655587079
