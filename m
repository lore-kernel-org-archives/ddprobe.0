Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509053C26
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660727452;
	h=To:Subject:From:Message-Id:Date;
	bh=MGkiiJTrQlc0OOxAc+jqQvnuny2gL2kNz6WIRwOFZN4=;
	b=UBtwWrQT2XwCqUG5WcgmYs/gqxgCsi9hPQT6FWwIjAfkZtgCsmvZckFfxj106D+y
	/vVHANCXFNrAr6ghiSgd5dBOrQLMUDX/h25isrIqLJGsJTTzszPCtYj1R7OWRavrshK
	J9y0zN5wVr9IS+DxqX8vnR7QZlYBEMfF3YdJBgqc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660727452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MGkiiJTrQlc0OOxAc+jqQvnuny2gL2kNz6WIRwOFZN4=;
	b=e36nos1l6ApqYKiSVykkGZ1JsbrVlxbCJQlLpZvnYJQ5s8VJuSqKP9dJck+/NXLc
	0izdDplKkAZ7dpx3ADALYFXlw1T2ZS3yHbXIsdfyT2PYTWJXpHwHOQ3QnIyKkQYXKSf
	D5nyL2vJ9+X1SeRrLeY6ROWMo2Lt7bTCmNAM19h0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ab11e39e-5929ce7a-d7b0-467f-ba7f-b09e0ed0cc86-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51f55b32fe51d772faa593ea7696e21d25561dc968eb9704dff6bd8452790501
Date: Wed, 17 Aug 2022 09:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660727452
