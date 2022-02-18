Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62337321D
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 05:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645161684;
	h=To:Subject:From:Message-Id:Date;
	bh=q/kpNrdFlj3J1Rcn8C8/tBe/I5FuuAZOjPrIAGEhxww=;
	b=Yl1VlnjOLb93jWO+8Y4fqEz3FytQWhIvLxnOmXrrtibd2QLQcbRUH/s7Y/PYAq8+
	Q8cPA5VeqWiUib6S1rQnnl/3uBxqJ9OqbdBTLquBZw83/u29PTbAJ+rZwjmTl/GqEhx
	ojyhS+8dIHpoZjscUBFfB6yNdxY2wRM8BErlTg3A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645161684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q/kpNrdFlj3J1Rcn8C8/tBe/I5FuuAZOjPrIAGEhxww=;
	b=aS/THvzjDcBUbIHy+vrhN+HX3ljpYcZSa6he77G4u/lt1B8nfC0rtjFcupNA1zYc
	zxdzwS8/5OCtXeRTjNnliV0i0NifZXlw0uCJlW5jEgnOgDtjgid3rwZHI8m5H/R/Q3N
	fuhRMHevyLSvJxttuGXOhsJrqmDo/R6n+ME737oA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0b471ee0-841e97c4-90e6-4d2c-a356-8debcc709941-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26a38ad0038505faca19d766985e410bdb128351c2654d9abfdac6d87004f439
Date: Fri, 18 Feb 2022 05:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645161684
