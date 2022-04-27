Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7227B
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 23:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651101418;
	h=To:Subject:From:Message-Id:Date;
	bh=//7FgbXYUXqxUzrJvYqQ8nwHGFtkLAdpNH6kAIsgpeo=;
	b=liC3HpVU+YrOUmuRfpx0xNCNrK7Vt7F7DichOlsOwlkEzmHOxgKNvWBykQch9RAi
	wYWrw3qIGDOfpuUDzxPXZxg8AMZsG9JSYgwwvEBiLvfXpmodh2Mq497YRry7+nuRt/f
	OCIcRFbyAJu0i2KsRTpfVbYd2ZYlJbJTmnXFFz3s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651101418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=//7FgbXYUXqxUzrJvYqQ8nwHGFtkLAdpNH6kAIsgpeo=;
	b=B1LYuzZemXzWUrWW+bjF/6R4cITlo7I72QxIAQy5shD1ywGx6YFKc5dlt+9lEq3w
	bvBKUvcJtLFTjc518hETCNsfTilYsAoRhZI+hpGK0f05heRotJAee5Nz26ka28c/mJP
	07z1tZ/JaDuI1QPfiJm+LSbUX0JNt4XV7X4KfWPA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806d504307-22c21c44-e16f-431b-ac6e-f23c9490b6c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ca0f2f1006470f0e180c1e98504a60dc3864365c7bb11626311afa783639b06
Date: Wed, 27 Apr 2022 23:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651101418
