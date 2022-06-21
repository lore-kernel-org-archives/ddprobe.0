Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F4FF138F
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 15:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655825819;
	h=To:Subject:From:Message-Id:Date;
	bh=WlaWQYYkSixb/3frtw0EgnmXmNkmOY+rK2eLSDl39p0=;
	b=HRmqnmJj8d9+d9HSe+abDblFI9PMl0+2MG5KX1ydlkDYb4bgqHE3VzACORXrXv87
	+9S/evs3DFWJ7NKK1VfobjKCDchyLERS/weEbh8aaS5cRYZ0W34aGaHPzZCTusaGN5I
	CUrpEZNZB4Oet5OL8kxgv0iXNKUgLEhb/y2fUA+M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655825819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WlaWQYYkSixb/3frtw0EgnmXmNkmOY+rK2eLSDl39p0=;
	b=G+xZSinRVjnXlEPIYtTmTYCkOw52AU/rOsRW+CKbpP6OgifrmO9ZX7t4WCiGlV7v
	ad1ACNkFElrE6aYaeJNzVHZpqrwuiXAHqxNhPgQA1po2kaeiyf1qvq6ckaFsATbWP1L
	qiuXMq1feQt7ia9PMIcvsXIYtoDYqRiJNJFkJCHA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018186e8e6a9-c9dc330b-3a93-4a9c-ad81-ea2c62c3e116-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd9d58139d6a2fe1c325d3fa901a976888595817dce5a8ec34e3f6293a08ea2a
Date: Tue, 21 Jun 2022 15:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655825819
