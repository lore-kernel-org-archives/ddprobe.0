Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6088E1FB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 11:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647345084;
	h=To:Subject:From:Message-Id:Date;
	bh=U5G+bTY/Rr46sMK4U4vkPuvZKixmAmYktfHbzFhr2Oc=;
	b=OysNJ1xxl6AuCrNky4O8Vqw6A72LMilzhdnTlqpi+BggcElxYKVWbQ0SNBZqNCHy
	GipuTcjko/PPVbDTPdxorwDrt+QtoC1w9eo05DqDK04kjBljYqPwqglLRww02M8g6sI
	iKRkdVul3pny3Ga3QrTBw16ByW4tQHd3p44PJemg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647345084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U5G+bTY/Rr46sMK4U4vkPuvZKixmAmYktfHbzFhr2Oc=;
	b=DXekCoGib32g+S8MKTHkyUCBElOdaobva3kt86wl/1saH0GOTLZ/xBmEiJ05A+zj
	v96FuoriZti1XgLvOwmQi6Yp4IQMZzsrApCA9h1vTORTf5WR3FTbgiLZt/s5XroxzZV
	b7nDtEyr3oZlJ1xnf9FpTQcpcOo2YbAuMY27yu60=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8d6b2939-c9f8900a-317a-4279-b395-23fe04a2fca2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6aa71fca204d9d7e914caa0efb9b7800b1dcac792bba747725dd7cfdd745e2e3
Date: Tue, 15 Mar 2022 11:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647345084
