Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB3C64C8B
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658852453;
	h=To:Subject:From:Message-Id:Date;
	bh=e8pgRaIEzL7k6EL7pP4baXzNjVpyEbWPICWbBNoH7KY=;
	b=RXDZLBgHzt9gdowZLJmHqvE8WSteNx+wWtlt5J8zE9lUoSInDNtBeFbv+14h733D
	BiwCHHju4uIsOHb/PDfoFLdd3GS5tR5qtiuJ7BneiwayfiuKvhBZKiUiMAQsP39fxSU
	h0I31Ywy04DIoJnm89/Td/095rq04QfHxqwfWGOU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658852453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e8pgRaIEzL7k6EL7pP4baXzNjVpyEbWPICWbBNoH7KY=;
	b=IEBFHQXNQ5aBiiKNo6k4sQR+Yi0U8HCGU5xZCEEXPGJaMdBfzDslvzbLjmaqBA5D
	hzqJOOlQ77RGUt3UHLKh+D7aWlg8LdenTFKyGlnDikNWStt97jkWIB+g/t640iiksjQ
	QHAPZth//to0Xte3uqxbhzxLZg0ghiwE3yfFS78s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823b4fa8c3-97564779-e3da-4921-a6ef-786f16f749f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f585bca02dcf05af30da9448d89fe9c8adfa33d45ee6e1bc5a3614088f42814e
Date: Tue, 26 Jul 2022 16:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658852452
