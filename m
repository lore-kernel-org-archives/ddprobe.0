Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82B64320F
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 08:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646035584;
	h=To:Subject:From:Message-Id:Date;
	bh=3niuAI3jAQoyvJ+KzU254nTKISGbvYDsKf+K6nwHrwg=;
	b=TnQlHuaARlpR/9RxpfwJXnHdFGg/z3GOYGaGk80XQTI0W2tiPJvTz4UCIIeaJJAh
	bgB0HSILORj1Un/y0PQNkMPQ2pFEHHOZuMC2tRAuuUizy7EzpGkUbBXN+a/36LGwAhY
	VGZv+9SvRvLgLE5HWFG/XYiDv0RhWTFunJlaPr8E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646035584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3niuAI3jAQoyvJ+KzU254nTKISGbvYDsKf+K6nwHrwg=;
	b=YetjHftLscadkG6Cfq4//46h5QtRZ+LcBnXi5Bkt+cZo70pi0jlyxM/r7ADCMhXv
	tgfbBTahYdBz3f+pzrQ8AWajcRfNpSDgfI9m7NZlqmaXHQVJ4ESUXBf7nGttO9UwH1n
	9Rdv0atdyCmiVDa6nLsEZPdqaXDGbwmjOh8rs3Wo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3f5dc6e1-74b3de0b-6677-4278-bc66-bf37838da9d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6836fb81fbb34e51a7fba00ba975b226b110663b9ae48daf1975dfabde7cc51c
Date: Mon, 28 Feb 2022 08:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646035584
