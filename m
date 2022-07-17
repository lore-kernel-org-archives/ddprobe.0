Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264BC64C
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 11:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658056612;
	h=To:Subject:From:Message-Id:Date;
	bh=mK3mP6j1l/ytTnZ1+BobaGe7yisvKXlkUFK/kdFmm48=;
	b=gsq8oF5yUV/yXGH4zaKe5Tv4oMrFk9Doy2FhVCzIbP2H1nTCbbH03ZshD+CHdZfj
	KyaTPrWqrB1Sr99O47ClAydKq9XMDTBq8KG4X8E0H17xGukWPf/wNaaDqeiYw7qAUKE
	0pY6XfMXyZft+ThgzrvFVLjV1XdMHf9tVa36Xt/I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658056612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mK3mP6j1l/ytTnZ1+BobaGe7yisvKXlkUFK/kdFmm48=;
	b=GNgUtX7yByQ510ZSoimM/gyJmm2dX0KQ15UiTVCG02UNts3V3BcLe9VWdIzKwM32
	PcwFTXW/hxbvqbRgBs75H0yrug9M/MGCilZqiVTFZF6LP1dBzJvfCm+RRzEIdEf8naK
	Up/UPA9YoW8m52DxwMuKcaJu/hq9eYM6YoAbtxXA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820be019d6-68f3c18f-1372-4644-9d75-8ec64deebe18-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 20dddce7e91afb98e0f56892522d21bb9dc18ecf199add9de818af45de035354
Date: Sun, 17 Jul 2022 11:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658056612
