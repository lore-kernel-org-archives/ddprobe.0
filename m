Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03827538C
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 23:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657929412;
	h=To:Subject:From:Message-Id:Date;
	bh=JGhynvE+/pEe/AW2CMlmaHsZ8wKhXmq8qNgsMzb2IE0=;
	b=Y7e+6EZcnIaln/su7n/51jjyvaZPwEzn0qaC08cPR2yPuLu0F0RIp0wpQV5mBZoz
	OTvTXhtxwRqNolsE4TOPYib/Iza3svzJmI4g1nv/uuV95xE4sOZFGXW3b07ZwRkp87S
	a0QD6xGkKhO0Ichzy1EekXHUxL2XFzhdMOHboI/0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657929412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JGhynvE+/pEe/AW2CMlmaHsZ8wKhXmq8qNgsMzb2IE0=;
	b=JX9L6hWda/xqRhiMNG1S9e4z/ODOgIiw/qtbY3eRsleTFnZSF2oW7FtMuVHPruBf
	uXGdvB6PHn9pIDsquw841HQTFvoroPG3+bSFK0PnNlPQctHiJnUnlTStooa143ykKOa
	bvtAPN0qvDJDcee9QbnnlnBPX76iE78bZM02iVPQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182044b2ead-4a7bcef6-0424-4b17-b06c-bcd32fe34634-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a4aa4e4e900b15d95babe57b89df1d97a5fb6373ab343bac4f99d72e84f9294
Date: Fri, 15 Jul 2022 23:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657929412
