Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE65F7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 06:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658557612;
	h=To:Subject:From:Message-Id:Date;
	bh=8B3ma2Y7rPOPmis2xsCmmpjtNxrlqLRaBH7+rFwISso=;
	b=D5mkNPrI9tMXSKm1e137LFxTut0In/lsIQhX8l/tkJN8h7ONnj1qFQ8ScNKDVrB0
	tGpEaHQozyY50qmzFtyAQ5EFCkIeMQ1JwogJV6C8ulb6pfRFVLHKnPkcPrHsZDtFlms
	fzwaHwQEZEyT0EsqJfHAgzTg4qOHNwINEZgfdwdI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658557612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8B3ma2Y7rPOPmis2xsCmmpjtNxrlqLRaBH7+rFwISso=;
	b=NAqE4IaXnUT+KT9QoMeoMZoA0IuTeVUg/mEGptzlHhPf3zWLYcaQkULlqORx/0Vq
	0f2/zqYuSwXXRw0rO3WOdd0R9j+dApGZ7jNXHn2fPEk95Wk00WhZsAegOrFmjymyraN
	mgbqfKmn1itM0jn+wJK0zg08qrbPS08q3lm4+/sg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018229bcc0d4-ca7f0c1b-1715-45a0-bf60-bb150bca00fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ada2d7b489b0af0ec25ded34c59a3fe51bd635341c7c5c0de6a2de046b9f2bde
Date: Sat, 23 Jul 2022 06:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658557612
