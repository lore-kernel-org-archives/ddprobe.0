Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A31B4179
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 12:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646138785;
	h=To:Subject:From:Message-Id:Date;
	bh=GgTBfayvUfsJ7jp/4UgYsRV+/ZAY1L/cB7xcl+6DSM8=;
	b=PT0WMB5usn4d+YJbuTlfXLztPBHJqEvN2GwPZ843XrSkHyurSf0EMKdytS6CDjdt
	rkBPzfHlK7xKxGJtDr0h3KNU2c6360iOo5wO4VBJDi7ooa9EygVgvgW7MB99SC377w7
	zQO6g66SLOoUsGHmIK4vEbHY93l63cpXQrs6ypcs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646138785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GgTBfayvUfsJ7jp/4UgYsRV+/ZAY1L/cB7xcl+6DSM8=;
	b=LTwz1t3B2+21bhZ/lk0c14UpRvnDBEkTaE76Jjc5me2rCkIluCrRr0Ks/RR+Zrqy
	AcZlE0fNYlNuKy1G8PhjMjV3aKEIvymXEDK67JwfPy8cZ4vPvJCcu+1vDdfXr/yg0dq
	CBss0MuHw02i8Ib3vpwoRTiKnvpWoEyCCSv4w67k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f45847c0b-d80834cf-3372-400b-bc23-dfeb89cb437e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a8bd719222b2e7e089804fc9aa001a851fbad6c6743b0072b85430bf95645ff
Date: Tue, 1 Mar 2022 12:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646138784
