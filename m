Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F152819F
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 16:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653150959;
	h=To:Subject:From:Message-Id:Date;
	bh=4VNeGfq0lJaNLdjvRnYiW7On7+ctkiJqDWYGm6a0eOM=;
	b=WYYa88gy2ajYO3PJ92vh93Y/A4SEOPXIFoI3qWusmC04NUkjn/e3YstIUoZvBYt2
	LPya0Gk7YeIut4S4/ANZp96VV/lbOzIbKdooxR3GdCfVjuZO6XlZ8nZWtOPYZeRhHOS
	eZe0X22bEf6+l+RifA7vMtyDWN5ynDivCs9jqdi0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653150959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4VNeGfq0lJaNLdjvRnYiW7On7+ctkiJqDWYGm6a0eOM=;
	b=ajJn4lM2hp1idBRoMVvPQ4Vt6WcF5nDXh2QzxPhOmUnDki9+wtr7/S3dP1PpuRiG
	8tqa7Yu8yyQsJrBHvUE3rcKtXgwkHTQOMc38wR0IvOYBk1eLN2eSUGUGFLfl/mPv4pe
	QrM2+AeYcCXMFqfFQlTwTjsQJnkw8OHgt02y2Hco=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e779c690-36133f63-ffa3-4c8e-8181-304facaa80e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b59b4ba24471e7bbe372b2746caf9b7d04662231c6f1e0991e4478076b5a12ad
Date: Sat, 21 May 2022 16:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653150959
