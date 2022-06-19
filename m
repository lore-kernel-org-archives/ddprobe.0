Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB9047B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 02:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655605619;
	h=To:Subject:From:Message-Id:Date;
	bh=jXZjhqp1s1uSoPTOBrapLeofeYdwrVO4p2stoMr9AII=;
	b=FcYfjW2XxLalzRtKxFAOXMCXOc+v3nVH1c/GMqtZpQZixmbJ0jVoF3FZtVTiPmB9
	2Ovz0uZRWjQiYbAIH87mI/rdA6HQpOe2WN4NeiBE9tR+o5IAN2UcdWnNQdZg909XoXa
	JUDqgVUjda4EbX8O47nhS/sJsW0vS0Ep0z8kG5wE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655605619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jXZjhqp1s1uSoPTOBrapLeofeYdwrVO4p2stoMr9AII=;
	b=HvRWYLqG+weye8u50QnEn4JWoAhnL7ntP3SthfL4dK7zLdf2BWVN+sIuX2thOt02
	EZ6qkLPiq4lYkspAq3i6TrRe4qAs+6LW/K415SzuGNmkn4kk1JmqdbDmCXXKLfHwyHX
	H57MbNfwlN4MhsDXe5t9ch5Cbtzfm2uudEXaDEuA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018179c8ea4a-a8967742-314f-42fa-8bfa-a7bcc677a227-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 63a25dc7b44b41e9a1915db4a5000539c23394eb53ae75b1d17f20605257a0ba
Date: Sun, 19 Jun 2022 02:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655605619
