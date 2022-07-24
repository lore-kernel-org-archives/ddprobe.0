Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4A07E
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 06:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658645212;
	h=To:Subject:From:Message-Id:Date;
	bh=TEp6Hl8GoMyhBbiILjcIzq5N9tr90z5cdJeMlVbdn2c=;
	b=HATwY4qiw2iCIRmARJCRU+2hPbv0QWtQHoNLqsCWzmRgZ4UNMhjE8W/kQDv4mrGZ
	PPgnBwlN+1DiYlBN52aSG3KgvgCIltmpnQzHLphu99s+8mJRhP7M4UqxXlV2M225z8N
	YO0aUolVHfRnpxZ8dhbbaNdX2lv0FeTYQ235QqvQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658645212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TEp6Hl8GoMyhBbiILjcIzq5N9tr90z5cdJeMlVbdn2c=;
	b=kuJpKf3BKe5OmGe+uMi/8aSqEHCXxMcEzNFQp77nWr77aLKpl7yTyARXKMuL2tOn
	35Km+s3Sp/dGgYjeuD8/9f13SDIje0PFv5seBcMk15zmeD3aRAxtf1x+hB+sql+nGNu
	2muhnTM0TgLg/6NGIfGQOtLx2ds0CzgYkbnwctDc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822ef56c6f-35178e88-ce76-42bf-9ec9-f6a3724a62c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bdd2c650d1b7acc3b29c8ccd7608114f29443a67ed811a580c92882fbcbfc802
Date: Sun, 24 Jul 2022 06:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658645212
