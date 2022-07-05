Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1587C
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 16:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657037812;
	h=To:Subject:From:Message-Id:Date;
	bh=SAL8eGf2JzM6YQ5haYp/lMBm613BDg6ls0gbp0ZarPE=;
	b=MfJ6QvNqKobv4ERVjZaYB1Z60VOBgqZXB0071eZODrQ6l8UNsUauu6ZysCZXe/gQ
	oI7fP9/nrJ3V0aM9BePhLrfaeUisc8cB9uhbZ24JOyWZLMJcCBtQdiC4nKDU0hSdbZc
	CdpIv5XVoy9Ew3y+Xctj6THMJ2dP6T/FaCbfCCw4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657037812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SAL8eGf2JzM6YQ5haYp/lMBm613BDg6ls0gbp0ZarPE=;
	b=WRGbXQh13OV2YbtrgSKdEzi7fV179dZWovwhwMMaWKkLOSxp5nvLZIg5ffU1CCCg
	FUKjPdAroezOGnpYatbthx3ePpUUsdhnSAwyY0J5lucBYy0tyd0iHLhnZj8M1799gum
	gib8+G0uwbsrb5cQtHI3TXn7YMYPEkDZbtfWlNY0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cf26723a-ce294b0b-2201-48c6-b343-789c1e104bdf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c29ced63205dbf2e0d57795266e3f83bf0e4a032e5eda12c270011a0880d56af
Date: Tue, 5 Jul 2022 16:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657037812
