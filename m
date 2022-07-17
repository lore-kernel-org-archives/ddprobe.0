Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4087F6
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 09:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658048812;
	h=To:Subject:From:Message-Id:Date;
	bh=hQr42oDWPKd9s8qxciHSBdY7UpIoAJPjs5hPh0uZhSE=;
	b=F5b0YC2fxqYV8QMGadjRfX3eNv+4GZOzSyfynQz2cMKIM9Bsv8ukTC1fpqJC97x+
	ELAFch39ZfZH7iOLdrrQ2UmB6lyp1P9wlJ4dBnNW8PdxhzodXbFipMovj/SoyLV4PhG
	+PHCtd9dAqMmwPk4Hk5sce6YYR3OAQ9QzvSeJVZg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658048812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hQr42oDWPKd9s8qxciHSBdY7UpIoAJPjs5hPh0uZhSE=;
	b=KpfxVHW6HK+fz+erSA9Y6Em7cle75GeO4Exar27A8+eJmnt4TPfGtYwy24sn7y1f
	NFGWCSf89/hD3GpFjo9P8zH+OWX4ztE4ModjTA8f6yGlyHO3qBevSLzELgrbhCOiLwA
	Rg5Kgdrvhe/t6ytg2rozDpzqNUEEHouqAtiMoUsk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820b691515-e6447d68-816d-4b06-bbad-548d3946a4b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2fc3491433430f2ae927880437fc815ff7179fc2cb2455b85875a20837c1d899
Date: Sun, 17 Jul 2022 09:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658048812
