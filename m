Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540393D60
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 23:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651275538;
	h=To:Subject:From:Message-Id:Date;
	bh=LBxvIt5K9Sop8o1M2HC8EWUhzeyXBdxTzqWllB9QG/o=;
	b=ZrlEHIGIeHy8exnhDgxnOw2/N4e7LMC8t5TxDP/jmJPezpoRPwT+pdGxghzShUWV
	psNoir5L09nBVNHYkcfro8wvLY4WTEsNneRl+9021Y1YxzBmivtQ4ZuWj4tZSiSI7FM
	NePDsxQ56A31AIhEf5F0TELqWQ8nfGDUB6bgiJ34=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651275538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LBxvIt5K9Sop8o1M2HC8EWUhzeyXBdxTzqWllB9QG/o=;
	b=IEyO9wx9k8CRps55JZul/xAgufVkDt0l5tbmM54327hBpvU1hqpcPd8XIdTvW5PB
	Tm2qcotZAWJ4ZafLVtZvzkQj8aGNiNY/IFmXLiw/E+vczJPzFHWG+ztf1JA8LAmO5am
	VqtCbnYwUQ++sXV5F7fxRiNAomycM2pHf4LBWvWg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018077b11f8d-06af8775-ece9-414e-94fd-796e59647513-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cdaace030b1a20d7038b6c8b3722ec09cf97a90c2ebdcaf6f6468ffbf91dd627
Date: Fri, 29 Apr 2022 23:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651275538
