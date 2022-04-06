Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C742F2D
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 12:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649249878;
	h=To:Subject:From:Message-Id:Date;
	bh=hE8KbkiakhhPwpwYmXTLKiHGuoy5C6h20XlCmdAMJNo=;
	b=DMh+fW/9hHCWy0AObAhUiIVjQg66CIF0XJIVoBrQRGsCl1mLaK+4i5/ZdiWFa9U+
	kkFHm6ze3t3ANwJYmz1gYWxN2mw9gNuyNNwUukK4AG7N/yUZuUsK7xscfLF28W9jU35
	Uoi7VWNmoqMAtl1x2rUtPAn9swmM/IrIKVE3WR/o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649249878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hE8KbkiakhhPwpwYmXTLKiHGuoy5C6h20XlCmdAMJNo=;
	b=Ncnb4rWFraDyy5Sp3KDc7MB1CLF/od8nfbOYuIPRmlWekvhL4N7KJeGjULEzxwTM
	gyy89iWewLquLKquadJ85hGhI0FhnX9cl9Whpn12QQjqQr6tICn1djppaAQNXg9q8mQ
	ShaAkD88s4daFokb9khI7dIOH/7sdHXtbWADqbwg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffef400e4-f15e17d3-89e0-40f7-a175-ce3d4fd5158c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a13615de47bc49e4153f13557b930c6dad686e8ae62aded28dc70174201d9743
Date: Wed, 6 Apr 2022 12:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649249878
