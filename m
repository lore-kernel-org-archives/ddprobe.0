Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E119C468D
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 01:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648951078;
	h=To:Subject:From:Message-Id:Date;
	bh=jUzIVzj+2ge806ZhXEh9q1TB1To6r3kChJhGdbWmTi8=;
	b=jYCzJTlmMcK8tBA+wpXGqrxQkENFEnyGHVb0tp1WJJ6PHYQBC+v09+AyOkWnjHkL
	iEAQPrp0diUse3nD27CfSCLWbC4Lu8gu9T7yd/AvDzPilD0aeoD8ZnIEdvzrLR0Z2NB
	oAhKACD2PtDOnhjm7l0C4HwL10Dh4H6tqYr+SAHU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648951078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jUzIVzj+2ge806ZhXEh9q1TB1To6r3kChJhGdbWmTi8=;
	b=A9jtHtRF6K5kJyLcF9uykN7ynN0prk+yQ/gmnMrldLKF9L3WBFoiAcDFcARSPVbW
	Z9xwucDy0481HFO9kpJlRrRBj/wnDW33zN8X1T6DM0ENYJ3wTGROTCc9fvDQjEZbbz0
	18RV51wxKi6wzkIn6ZvsL+Rpqml4QN57p1DuYGHk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fed24ada7-5d9e717a-1036-4820-ac91-7e76ba9969a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab73cbdf20f2a72e69d7ba9e855381eaf59c6eb9502714e0d17999922b03b993
Date: Sun, 3 Apr 2022 01:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648951078
