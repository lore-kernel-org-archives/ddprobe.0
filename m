Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D28A72F5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 22:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647470184;
	h=To:Subject:From:Message-Id:Date;
	bh=sjZ1K1HYutTkw8EM4XKY8y2w2uG1phweErL0KXuefS0=;
	b=eyxUxZrh5uWjdP//La+S59pfc6+ZhJmj5srVfmMyiQ8xC7cl6FS3IpR/wFzsv5Xc
	EwinKa37fRWCyLrhDQUa2X3PK/6xoy3lr/QpqUjsM6+b0PneNvE0iTTekeMd9mt6YIo
	Lfxun1ZXxkRNzVAQfGvtsb1azE8JbR+eB1wmacCI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647470184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sjZ1K1HYutTkw8EM4XKY8y2w2uG1phweErL0KXuefS0=;
	b=gh+ylanb/xtxcB+RIswSAdUTduk7tW0E1nZ3U/TsB9KzLmuPm4CT1vuAPlLA7WG6
	rIjb+GcCbLRNHFXlj4fOH+CC6RNXFd8WvY1eck2ovOKlNLDjzb6o/J3pzMvcwZSZUW7
	oMXgZ8y74Dki22NYwQZCy2+xS0Br/p6GFcC/suZk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f94e00936-5850eff3-5126-48d4-b461-5bb6f99b1b36-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98e9dc068a881369fcb9344aedc269efb6911d5ae088152f3f2e2a64a95746e8
Date: Wed, 16 Mar 2022 22:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647470184
