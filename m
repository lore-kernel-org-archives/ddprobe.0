Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 070245805
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 01:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656725212;
	h=To:Subject:From:Message-Id:Date;
	bh=nM/C8QyDnjjKTLylHy5c/Cgy5Ij6NcV0Qttf5LiIci8=;
	b=cwUgypTS3sNaGTEuJTyHzG2wCwrbZnb/gtkfCDehaE1+qnfrX9FSBOY6/Ck3cCgs
	3Amzn0LeYikePXelDqieho6+M0noZU9RJ/Azvm0qJ5yLev3r4AP8GtAjqrOhbIqq3lo
	oLLhF9M65+lNCQqMC+1KH+qVpqDDwG7U/Kjkq8yM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656725212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nM/C8QyDnjjKTLylHy5c/Cgy5Ij6NcV0Qttf5LiIci8=;
	b=hYOMdDxB4v1GerOLyU6qQpFKndHklRGVjcYmBmmmbHWA4wMb9sfu1oZ8qQYbXBsr
	s5V5DflX8oAudwbaWg6O8l3ErqeL/J6aqAmQFVnYxqsWbSYDh1IoS3McUAHaK8iV8I8
	KTq4HQGN6pOkdjlBwsLSLQynMlCBYgK96gpqMgi4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bc848ca0-2616bc20-9f1d-4ddb-aace-8a15b37d133d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 03d5ce4406c89e22c091323f9adb10d9aea140f28d31615ce9b62bc23b244b05
Date: Sat, 2 Jul 2022 01:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656725212
