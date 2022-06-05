Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFBE4681
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 07:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654412939;
	h=To:Subject:From:Message-Id:Date;
	bh=MKn8MwOn3bLczoP0lPp/D49hvAm8ns/eNXHVQWqUFSc=;
	b=Wr80Eu2XQVUB1QulzXWkbPR3H+ILjsWsHoUuUmzm163ViczPV6+SkKnSsQm3gpJH
	LzEZHGz7NsmpZW0rlJrSnAVTju5+clcvUQ496xON6YMaedHzCebmmr5+TW0Ic+3Hndx
	wQavR3ZYo30Add4QkJi128NvacNTs5wcHlqt1sA8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654412939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MKn8MwOn3bLczoP0lPp/D49hvAm8ns/eNXHVQWqUFSc=;
	b=h1DRA2/BYJABjUTnPVp3g8MaF9kheS96Huf+ypDC8ENdpwmAZSL6kUAdUcKv434Z
	S5W8R9EukbOVwSIlXwDqc+LHHTNg45lo+nuCaMWUbW4KtVojtvLlARJa2vz4gHVN5EY
	KRJ7lnY1YLuCkNinRfvlVmXRSUFbr548R7iFcOF0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018132b20ff5-3358aa1c-a48a-4ea6-a860-f4269c5f0df3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e79708cd1110d413a164f39e281370f78357ea8e3b3cadd23390655dca8935d4
Date: Sun, 5 Jun 2022 07:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654412939
