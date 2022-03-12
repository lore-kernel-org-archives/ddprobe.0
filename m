Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB52E614F
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 21:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647119185;
	h=To:Subject:From:Message-Id:Date;
	bh=KQrWGESERSxMzN3/Xu4PZUGG1w89VkA7qGfXE3LuBuw=;
	b=YB+WrtqMlzUkPrw282ofwQ7FFmFidQO5im1MuK2l9sKep4wJF7Bhm2O9PD+mM0Dk
	SaSr2YSCzC3mQnjBqa83oAjbdhMVnJXA3GG/H+YiSOwT4disbzsi0VIhNy+C3KK1JDA
	cVreZSItSFA72hGcrX3XmP8phCyC/v+FRHgvyJEE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647119185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KQrWGESERSxMzN3/Xu4PZUGG1w89VkA7qGfXE3LuBuw=;
	b=j9tuDwgXOYs5IH3jgP+nXCk+3xw/DPBZsVEv0x2wncefXEotBDQdwwvLtONoL2Gf
	hLryD4Jm2/FJpTkeuEDHHO4H9Nq9BtLHMC8wGCICcWQ4ZznjEdXcWxWnF2h0hGf3Y2N
	QN9ahAbBlocJtNSY6zpXMoF9GAC5Mtk0CAM1nca4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7ff4338c-c896741d-2c4e-4439-94a9-65c29eb92f7a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 441462c5bf945a040d5540a7221eeaea70fcdbe56ef8020d8b3ed8bdb7f5c728
Date: Sat, 12 Mar 2022 21:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647119184
