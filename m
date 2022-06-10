Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9B662595
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 17:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654881299;
	h=To:Subject:From:Message-Id:Date;
	bh=7p1bmvBmjKeMxDC0oUdmsCRNy3T01r4kRMLMCQKEp20=;
	b=HCPI267hglKuHmXDV+DdzFA3nlrPC92uosBYpsA8t9+knhqpBJpxW5yS6zDXX4lQ
	7qTZX9+ydRij7ZEgPoT5x/d7nYWF0gC7sl2wUEo13pQly/OWbqIvZNraCQCwGoZbYBe
	EP2pJ/r5nqc03I9AvoPiofsK5TCfVpv8Yq4pbyiU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654881299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7p1bmvBmjKeMxDC0oUdmsCRNy3T01r4kRMLMCQKEp20=;
	b=FrAQ1VkwlLyVk0AKRNNgpKj2AEfr6Mjgc7Uk9sCIk7EISeWzjrCbmt37UgV1SOOF
	wKHJ4+EdMMTXxwrOJKi9b7pJEtZ9DD4jAVm7Un42FWTs2VRYwFF1mZNaW//f0iOEWgh
	/dJ9VtXmxXQDCK8ZrDSdMSUwsCJNP1emCmm9Xc1g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814e9cab06-889b61d6-365c-4b8b-abe5-c58feaa7dc25-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b128f67962fad8631da844658ff9b3c695496e5d70102550c2e29c933e6777f
Date: Fri, 10 Jun 2022 17:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654881299
