Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DF67F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 11:40:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654602000;
	h=To:Subject:From:Message-Id:Date;
	bh=aeC1HXfZKtYBRi2D47Qj4zW0k7HpVTtV+KHnrdtK7Gg=;
	b=K1qzi051qufSS50pBvYr85IdZCr9KtY3cNmFpOeGC/K/ctUak7iOGnWbKaBQzLZM
	EqKp7RwLFgF0DAnEUdM490h5NlTu8DLQr5EBuhx+AY/U2yhKesRsiqOMfZJqdOi0Le9
	+V3suQTnxHasrGQAwVHd7iJLRdxmRJZ8ArhrtWAI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654602000;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aeC1HXfZKtYBRi2D47Qj4zW0k7HpVTtV+KHnrdtK7Gg=;
	b=CQdnLrH9Gfz1zpo9psjzjuOwKDgwPL9Xhc5da7LhouaTJggYwMMiejcRQe+9pHaJ
	281D3nQMtffZ8T1PSNCbHbWEzFBwAMlD0Hsv8MKy0+9VDB1CWSQgxRIZn6VxZcPZJS7
	P1CNQot9m4//E4pECJOIvoyxYw7/5/th3jYRHI2s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813df6e3dd-234877bc-2796-4f56-bff5-4f1745f417a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82f81ebcaa3b28154ff57b10de75766f225afcbd6b94489f46b9efc8f601a563
Date: Tue, 7 Jun 2022 11:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654601999
