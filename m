Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369881368
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 17:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653498419;
	h=To:Subject:From:Message-Id:Date;
	bh=vdx4vGz/Fj8br9YP+2CrE+3sGDUNKwEel3inxbJlnl8=;
	b=Z5siZ31xo4BIGb06bFoX/6+rS5q9QsmtZtFzH/rGNuH7WAX/kaLh8IM6JKzZHPk5
	S7MAxiEwy7DGFe/96c5cSSWxQ5bmImHTMO1W1Lejex06uuO27XCnSQn4qUD2AHdUzht
	tBMg4xhq0A7bMjcnzOz0+gM2sPZ7H0famvfuFL4k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653498419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vdx4vGz/Fj8br9YP+2CrE+3sGDUNKwEel3inxbJlnl8=;
	b=OF4Bqk8ZmsgwnEXCioANagZsW2kHFfPaYQ0ZnhJPYEz4L9LXZjccXNJivFyAfVw3
	mHfFX27J49pPkxX2GNm1Z4Yei5g6Y+SjztRQd4FXmq8IokBPkqOywDE3rOi9UiUcer0
	bGAHsY0qls2hElncEwXV8uQ9XIzULZ2IIvIoIK6o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fc2f9878-5820ab3c-f310-4210-afdb-1f181d2fec4b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0c0edbb314f0c02600c9e4a254b582725f8a056bd534355e0e03591160b82c5
Date: Wed, 25 May 2022 17:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653498419
