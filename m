Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB33836A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 01:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647049885;
	h=To:Subject:From:Message-Id:Date;
	bh=XR0PYhwIgMCkPjoYVKm+6i/A8zZLyJhU3s5u16srt8A=;
	b=G9GjXLx/Bs/RJkJ7sqjATcV3d+GTVgp3dH7+myLXf54exEO6+JfCrY9kdVzUP8SE
	e8Mdb9YIf5AnRaiBQj2+pRAQM86Ox5ViLJyPje5lmgYOyUXVXHfPhAl/VdFTppAy2am
	JMsl9hZUYsIIg+ACau7XaNO4CiUYrj31O45g9Fp4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647049885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XR0PYhwIgMCkPjoYVKm+6i/A8zZLyJhU3s5u16srt8A=;
	b=LDSXz/3z6yQwaL55oB0t2Ss7QKV3ROgNq3oJt8MUfaP7ftQ86Z4UTNKa+1Gnmg86
	I44cQ3lcbGu98UPmrB+ZEgNofFNBBhTOWGaMEyJiKMoLW/izYe2k4p6XNI72hRTBAwf
	wY+QUayPwc6bM2uw95hjlxp8RlvikPokZp9m6do0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7bd2c4f5-a97763e4-b1b8-45a6-9d67-6bf822a89add-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4942959d0096de157a65615c8f950cd2b656f51862ace8aa7be92a2806ee1cf8
Date: Sat, 12 Mar 2022 01:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647049884
