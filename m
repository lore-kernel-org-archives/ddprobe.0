Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E42C520EC
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 14:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657119412;
	h=To:Subject:From:Message-Id:Date;
	bh=U0riesG6Ooj35CZOm9T0ULL96cXvQGGCX4Y8FUQ/7ZU=;
	b=X+dOGhOWRMrfAH0mH2BAnI57YwLKd1xHjMsWro9YZlLF07UzqUKcb2cNTWZEWlc8
	SDK9kJBZ3jtprqpDHJBRUG8TqacFFn0EToLx8UfHPvmyjopLkgt89AUyJGbLZJBDiZ/
	Pq2BDAz0RvSSF8ANlauab+FTDFTkgLTzRH6XWcok=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657119412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U0riesG6Ooj35CZOm9T0ULL96cXvQGGCX4Y8FUQ/7ZU=;
	b=ACVA6uB+uURVXDX0sVZ1NZ4P9fpH1Px9nMZiUtgywTB67+M7YpPd6shNlkJ8jO/h
	sKya3Px3YFWSh5wjMRcN9dMctJtnPFFMPZK92F2UaIRWJgtGG8qDfWlrCIOe2wKx4k/
	SNQgoRb9h71lthxc+rfK8ArBRFPQZ9smiWdelNrw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d403901d-58ae06b9-6d23-4dd1-af7d-690424d27a98-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f6790644b9abf2c02d7a2431a490e4ba0779e525c61fe8d4b4da0b2d2261a00
Date: Wed, 6 Jul 2022 14:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657119412
