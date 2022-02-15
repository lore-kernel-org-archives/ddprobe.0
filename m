Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 856FF1376
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 10:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644919584;
	h=To:Subject:From:Message-Id:Date;
	bh=rppi77mDaO/cJoi35QvB3Oxm10jmqGhWu6AYr4xcrzE=;
	b=VeL1iYz1Uc2gBijQhp+ZY039A8BL3ac05+aRu+FfCUdMudPn4poJna3W2g76Xw1s
	uug57HdqBgEmMbZwOl5ego3uEXVHDJSaQf9K+c5VtYhEZfL/Jmlk6fMwum7Yl+JNw14
	8x0RueLX4ZarEPUbfBYEVxnPvdBdTesGacAzPLtk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644919584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rppi77mDaO/cJoi35QvB3Oxm10jmqGhWu6AYr4xcrzE=;
	b=Ut0/AU7JjglqbsztwgnIL6IvOIjGcIh0+vlp5ruMQ9kB+PJNjqTpSMVih5oeCft/
	FYyFRBjiyT0PNuKeo5ee6YauO0ERsitOqaetMTYTNd4PLzzBof66B/h+d5f8UVwy2cv
	QHLdjn/QNo7oeLdaQfQ7PU84Um5i/nICL/nd+0y0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efcd8f7ec-1fe3305e-bc26-4807-9713-dfc9d80c8d41-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 564bcde9bf05d1eaadd67083bf644d964cbef15fede269f81ce267b59d8d362c
Date: Tue, 15 Feb 2022 10:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644919584
