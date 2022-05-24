Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D0D629
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 01:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653354359;
	h=To:Subject:From:Message-Id:Date;
	bh=A96biNEZBIeTCYTTctWUPUY8uPDy/gxjx6K7AlcZSUg=;
	b=DvaR/Im+jAft3VdlLoQPFmfQv4tHW/HeFW9yZv4l7Fi8h+Kx9JR74uu0OXKF7c1m
	ju6Eloum77IyZhQoOOGd7+P+7f8EDvGxNt3ao79JB9bdGX5s8DB6MhWKnFyKRDdqxD1
	ZR6CCbn5UpLoBGNeNJiaW7LXV7O17SDrad9Xxb/o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653354359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A96biNEZBIeTCYTTctWUPUY8uPDy/gxjx6K7AlcZSUg=;
	b=jyDwts4JDyp1LriZ2r5kyuBsWN8CIlu/98dd3XpGGyPaUBgiYA35znbeUxHfrGD/
	hb2SvnXRCfX+miA5Z8O7xEKX85V8vlSCYjzubTc9QxBcUjm9hbx8FfSCunm1xHy0N9A
	b2D3FB/aYsrhxBZ2nUkN7XRfZ3gfCXA5YYaVJprw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f39969d2-a79fc996-be55-403e-ad65-cfa9c0db75c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd13b4af8a82579874a27f57bb9aa64add125433b45fb49d8f712fa9231e3166
Date: Tue, 24 May 2022 01:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653354359
