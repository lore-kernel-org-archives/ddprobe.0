Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B11C10E0
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 15:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652714519;
	h=To:Subject:From:Message-Id:Date;
	bh=e9kh3hcP8YiUUaLzLNa46K3AjfzeJHHkrrYgsoXBvO8=;
	b=aK77LVGN4SCjM/lzGGyCtnMHvtYGQtx7ksUlFR1uyddAaH6RXcl5/0CTnwuAfYkF
	OWsjUlmS2wuqqpbxZlfreoLFzajsKwlyTm2ttW+pcKe9yK+rk8LEWczC7SZRnITDCA3
	d39c805wGNflonzU8Z00MTPhvBpGS+QWK0A96QME=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652714519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e9kh3hcP8YiUUaLzLNa46K3AjfzeJHHkrrYgsoXBvO8=;
	b=CkuqIbms09Z1NH94i3vux5Ryj+xwXXxggW+xmnPkN3sbOju6U1PraqGCOe1ZA0hH
	zbAMtb7YAKZYOdAzo1yRUIwwt10wbu7d9kE30AS1j/og5+NU0+7Ia3lyTB37uOgXQE5
	TpT/yCGrd007DArYfmtrSstVyuZolP4HoTWnwgHo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cd763b1a-ec6001d4-591e-49c9-9798-c96c75bcc01b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53ccdba056670ba072925f0f788e731e285b04253541988b27e162559e428232
Date: Mon, 16 May 2022 15:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652714519
