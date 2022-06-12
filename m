Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3991D1845
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 21:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655068799;
	h=To:Subject:From:Message-Id:Date;
	bh=sauj2rQo2DqLETUDkBAGIMrAEAu/coKB4VAgCnpIAoE=;
	b=UAz9ytJq4wZlJ6CCd2Z3NRYzAiMwXws55/noireTc4loSrBvqVxYB8ZIpd59rC3U
	An5i0lvLA+tf7J4dyYUzKssJMsGcdqyq0M9yA49nb3J0y8pFkA2To5fwhRX5xy0zMzf
	ATJbaAS/wWk+lOwZqAmY4+Tbg+066Sd77JjbVIXE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655068799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sauj2rQo2DqLETUDkBAGIMrAEAu/coKB4VAgCnpIAoE=;
	b=NhSdnwGapoalTJG0eLSeHaPIv+TVtRvidXLHH1TPMOihy68rubAb1IAJ8bPWSPcq
	xxNNw8KhqSannR59fZKgvWNWZbhju+EeI/nUS0wvZTW9Vl3sEq/zLO//O71MgG38AgF
	NoMKvKwKh69ysgaZWCJpatzZZLuJ37uJWrPp8D4c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018159c9b105-b28a51ac-c2a2-47a6-b17d-66997413da8a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ddea59ba32fe27936352ccf9fde196788a732857d0ad6330f35e1a19a8c97ca
Date: Sun, 12 Jun 2022 21:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655068799
