Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6021104
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 08:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657442812;
	h=To:Subject:From:Message-Id:Date;
	bh=PKhYIvZgmYYs0nkJ9oZHsZQQu+Bm9to/0HzlnEPr+eI=;
	b=Bn0zXUo4owIm+YjJsiYuxcg26tswpI9EXdi+yid5JgvXMnd22acLwzdPk7yyPASS
	eoM1BHOFHzJ/pR3uSvvzl5zSV9NbWuAFTTC7rkT+6jfZfi4o/lfX7WAJmMJCIseobGX
	XDEkoNe15S/KiTB1sFfZfE7aSD0JFViWPNSinYXE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657442812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PKhYIvZgmYYs0nkJ9oZHsZQQu+Bm9to/0HzlnEPr+eI=;
	b=BmPHtezseCKPvBzYP6pQVsc39C5bbxTqsoZKKTzIM+bLgcInWxlHnapysjdXcW45
	XsdxEZLzhonwG4YAJplKLXQdgmZM4TzH6uWuqTsvHAuSYtTq94zBgs90yWjYNx++VYA
	BS7Zaytr0SsPItxlhslWG9YQd+QrY4raIBiME+dA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e74a41b6-60b9603a-51f8-49ea-905a-dac98ba4f8a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44d532058cb6294a3a02a26cb3d99640055737a02f8eb3308477d8fe73cc4f04
Date: Sun, 10 Jul 2022 08:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657442812
