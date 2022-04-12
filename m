Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F221B1FC6
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 15:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649776798;
	h=To:Subject:From:Message-Id:Date;
	bh=CtFNgNL4pWaJCtSo45CU06VEZYnlQ/8BEbs5r56pRY8=;
	b=MjXIenlOIGd/1oN9Ams6HyMChiAvx6CTHs+F5Kzqx4j6LQENM21jli67Zi2in5sr
	yWPwxx7DrCq8UqYvDur8lKnMhoRGgUDJGdwA7i/8xXc96nu7n1pBI2CGoWIpDPxtq3k
	5nvxz9IQtvYaeOFri5bhOvEkEsJMH4pna1gvHjy0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649776798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CtFNgNL4pWaJCtSo45CU06VEZYnlQ/8BEbs5r56pRY8=;
	b=afCbwhNLUsImCsK5GiRam5K4RQDuSGgf5FDPgsFjst59k3e5jxaLVMp+0Nzutdjy
	PVC8BC4/rtR8kJ8o3VLEJqbNPmmYa3s2n/JP03MprasaPK7IJnW4YREf+X17jHtmYeL
	DxgzahwSc+mjtHMPFlbm43CfU/hXGdwOWe34/RD0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801e5c2a5d-70fde8ae-9b0f-4d42-b7d7-a6275990cb40-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b7e49ed62592697a034f1ea3ef3449577c40e9d87382a71017e07db5a51ee5a
Date: Tue, 12 Apr 2022 15:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649776798
