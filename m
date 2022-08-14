Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD59EB8
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660471852;
	h=To:Subject:From:Message-Id:Date;
	bh=DvihXf7NqkpH8No+Itj3YyuWwrHbTwTHMm8R9fgCIVo=;
	b=VIEtpdNiBMsSj+SlgEl5Txv9tfoSDkVmZhXDiAF92LySTTeIjscrzeHwk4iByitM
	dLXATQYjW65htWPYPhi/UXJaRow3DOF6oX5xdBwGM7lW28BCQTXpAZtAi078QBcavjj
	qGtX1nFFv8cuWPx/auAER/CJdrjWzvxYjYTjfkSs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660471852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DvihXf7NqkpH8No+Itj3YyuWwrHbTwTHMm8R9fgCIVo=;
	b=K6LCGm73J0m/rstJ8pr2FcUryJd5n0Uugj0/fgjJ7GQKFjUdC+UFg5l0bHdgEdkj
	u2imTIdyHuzhFlv6oXr9D6LgREdxmLzcJN4pGKsd79TsM1sBtfodYTIvrcC89vexAsj
	263/Cz9u9Nvvv4N6jBOEtwZddofT2mpms7I52X2Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829bd5be00-91e12e80-62c7-47a6-99dc-731282d5220d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 760c879d8be325aa87650a97ca5cb68489cc6d1b5fb4a3636c2e8cf9d5516dca
Date: Sun, 14 Aug 2022 10:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660471852
