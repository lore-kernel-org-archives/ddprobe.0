Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C27614C60
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 13:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647611184;
	h=To:Subject:From:Message-Id:Date;
	bh=crZKeAFezP/4PtKPfNhUFrTmeePWJhdlhiBfSQdj9HY=;
	b=a+dMVDi55wwCYJvwPX69g2UKnnUx5xy+dS6p9SMVZSb1baxpa/9lW0lOpLlRe41G
	zfguq8D6pBDg1KtQrvjNk0tVhswodE4Pd42clS0xZt5wx0Ybfe1jwmxkX9BGlqsueXc
	tu0wWBXyyuzuhXOV+N42G+EEoUblnXYzkcj327xE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647611184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=crZKeAFezP/4PtKPfNhUFrTmeePWJhdlhiBfSQdj9HY=;
	b=Xq7c0QLyBFGilboblXX7OVFsUH2x9p+Dhl38v7KdlMKvQ1/VKKOGItrCx+MZABKX
	ex+kleYp+cec2gIiT+xzKe1/CAnUyd1UKl/MJ2zXlV8Vd+G6c4vDpqsw9v6n+MwCHJF
	kY/KwztRdnJFmnAgIaWN7swU4X2+11i4HIvjY45w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9d47869c-4e731b34-4d59-44e0-baf5-ca9faa20877c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac4189046a6cd949e06229ecff9742cddef52605c04cdac375a42264680b96df
Date: Fri, 18 Mar 2022 13:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647611184
