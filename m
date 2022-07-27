Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E53F7EA3
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658912452;
	h=To:Subject:From:Message-Id:Date;
	bh=TnFFzX0EGr5DoL/nqTIyEz/OZT/h3RlqY/6ePtLyzdQ=;
	b=II50X+wF+bY/d7YzyqPeb7uZfNE2u62TAK6Mv9nZ4+nqqIM9k5D0Iz63KIIWSYvL
	A9qULIJj5kqhLW3evIYnd2rYEIGQGv7fr2+1INLqtCg2NRujapQ0VVBYWPiRcGPp/8T
	tI64qPEZYTdLknEiSFb2oLGVeqHnUGOPe5vwvseo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658912452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TnFFzX0EGr5DoL/nqTIyEz/OZT/h3RlqY/6ePtLyzdQ=;
	b=K+0Ph7e68+AaHmhIXY3JF9++VGgee7tupg2JZmeyTbZSbUCVg8bMDj+PrVYTHEUH
	kHmWz4vSTDbnh3pH94t9tG0+AVTii9ovo87/aJL6wkLDeSi7k6CVAi8z+sv+pU8eKFr
	tjDaRymeghIa4H2d7DyZBEXVKDRukWR+MMunonPw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823ee32fb6-ba8e2ff6-2487-4789-9ccc-b809cd3bc24e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f83fceb15415829a3ce76a7b09abce0ef8df23e3d734ab4d5b73c13e5bbdb6f6
Date: Wed, 27 Jul 2022 09:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658912452
