Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7764A31
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 16:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649522938;
	h=To:Subject:From:Message-Id:Date;
	bh=p8p7sPAYVENepNa6u8aY2qetA+ZDi4zofneSXID59Qo=;
	b=l276vGjAykKOLBqrWES8qqJAr8i2IZBbPsxABvQtSUFrLNzJQVxZRvtugmClf2hE
	pg6tqRUI+enikG64ww/5TN6oMq/2bArdPWyPI/sl63emA+VfhAu3bS9hMG537SJt5xH
	6nkEA+2f9BhwxDStVLpFrRUwt01Eh4Ws6N9UM1kQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649522938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p8p7sPAYVENepNa6u8aY2qetA+ZDi4zofneSXID59Qo=;
	b=jd9zC2lzkMB4NG0aBvJawL79Lf5hq+Q7g0As2RH7nYVOTIaiZVVBgJxyFZPZWaZE
	Eb3+pgV5iOTfrvbn0+x5MfjgnRZ0mfe4jpDb0GrVIFrCUFrb8zHBAZ5r2fPwR01WMEz
	szxV8MV/onki4zqasdDyC1fQIdXbM+9Yin/sKWD4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800f3a91e7-0878a8db-fc7d-4821-a095-76030deaec00-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bba3d443fc79f60d582ee562e36c561aaca2981de7c48a8e4ce4440f9c426496
Date: Sat, 9 Apr 2022 16:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649522938
