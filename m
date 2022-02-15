Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B32186C
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 20:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644957685;
	h=To:Subject:From:Message-Id:Date;
	bh=10gkmmbfkeC3FQEQK+1EOLPlk4Q5KvzEIcsMGp+g6MY=;
	b=ZMtwguFcIwPj1zj0lmafqYVkCh2emQIpjopUfmZFAWhfxJb1UJXhLRlQ7iuMJSqN
	IFC36k70fXgJcCVH+mAdDbQJsWaOjYNouhOy9njgf7AEpoFTXwwJI3KdYl0DxBcPfNh
	zON2VIIiWe/Z0a8Z33Vg7g+TxnNe+RY/sJfmCYsA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644957685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=10gkmmbfkeC3FQEQK+1EOLPlk4Q5KvzEIcsMGp+g6MY=;
	b=X7lBtjBzpNZJ20XTSB4g2kk0cwDc88dplK7Hd+5ukiUAUQcmyT36ZyXUWwhS2Lvk
	scz9jhfHTPoM8d+7fV+EEWAHGIo3+i/lUD4hVNSCp4AJxk+ITCYgGLoR+JCjbn0ZGFp
	QSoHyR6yyGzl6EaNlQaPmlj4VnbuKINC9y5I1pFU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eff1e5435-407e07bd-0020-43df-bb6f-77dee11e83fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b08a2021d44048588bac0f2da121fe09da5d96bbec343d43f30c424e668b4948
Date: Tue, 15 Feb 2022 20:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644957684
