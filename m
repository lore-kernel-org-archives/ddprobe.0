Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 051497E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 00:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656893812;
	h=To:Subject:From:Message-Id:Date;
	bh=PjRfu9UXTBeFoVc6+k7IfHpGtz7aa0vHVbi/zA8Q+YI=;
	b=gmUj0owJhntyPW33yi0KQTl5K64Zj4vlns/PACLba639wkcZOSgBwTknTFQFwq0N
	Xa+4sLPhGeZ4CX0YVHThJIOJgE4mp5+HGwv+oU+ikNbG1hDihRlBmaL18Nh1XkQJTdh
	Qi5idvOEP5VBhz6nYEEYfboTB+0hFeJuzvUymxgo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656893812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PjRfu9UXTBeFoVc6+k7IfHpGtz7aa0vHVbi/zA8Q+YI=;
	b=Kd3wjJYlir12fKL674mRp3B0Z186dQAa9TX+3r/U/BeajUu8tGCHqhTBELI4kBpW
	0f7cT3PeJyDqUHY2e/61+sOb+G+oKDhUpx9tBWtQJStDY41hlGQWfgGC7MFtc4boiHM
	r/kTiGnKJ9PIY9onkJ/VVeP8VNvEwsRxh+dSSFFw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c6912e47-fe174ce6-d362-4603-abf6-6d2fb1619612-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5794036a547128d64cd006b3004bc0fbb40446839219dfa8a92696ac39f1db01
Date: Mon, 4 Jul 2022 00:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656893812
