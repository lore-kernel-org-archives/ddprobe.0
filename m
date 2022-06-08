Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 750BD7B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 23:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654731959;
	h=To:Subject:From:Message-Id:Date;
	bh=ZVrmS/in6ahU8whAAAohuIaLRfUVZOX8wkQaL96PNfo=;
	b=guYlWy39OdNLYv3eGzoL1KSRPsIBjDWW4KD3FJXQdfH5cO45hmkAyRT7k/8UOMkP
	mFdLvmJwmIyY0A35G8ak0SY3HforNcyYzPBVBVVUtyE08KNAb4K8u83iSY0XUxm6p47
	brnZ9OHe0teCPSfURgG/Y3DSmcJG5VZupq2P50ds=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654731959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZVrmS/in6ahU8whAAAohuIaLRfUVZOX8wkQaL96PNfo=;
	b=NqrYjygdAP4nQvmZhn/ksdUa73wsVXrC4CXvgU8tNUogcdmmirH+8NS1SnoiKiGU
	/DbAhly5oB7LU7C42+fVSIbY4hbSpEvDccEZjrylNz4O6I53l37wLpBOVpaGoRHM0BQ
	1MwKwqWbgGNGotu7P5pIoIW7uTAQRVcHj2lce60c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018145b5ec43-1dc02122-edeb-4aed-8eb7-b61deb31c9a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 13098bf0da704818806433840f9e1bad7ff061af460b2f4bdd16716ee0f10d29
Date: Wed, 8 Jun 2022 23:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654731959
