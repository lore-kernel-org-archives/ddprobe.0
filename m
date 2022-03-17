Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486ED3D79
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 09:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647509784;
	h=To:Subject:From:Message-Id:Date;
	bh=47rPnxq6qfvMUvdVpmiShu908n6i8NOQ4WnbJALRzMA=;
	b=KSHaP1pi/LWfEjK5Su3dUQSw8XDYZbaPo9+hT9WSeiG0V4bqFJg3E2/Bc/12MqnS
	NCqii4vRfmyLGpQAwhXpbH7bX9L5Tm/YtHYR7uRamYLGD8aSdo3OKCrlYFC6fAoDobV
	66rXuE2VIAbJKILhC2Xc0EVlymuLc0ggs6Ho6Jqo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647509784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=47rPnxq6qfvMUvdVpmiShu908n6i8NOQ4WnbJALRzMA=;
	b=bm+oCyEGjrxK+DrmV6kE53iUf7Q+dlia+39VeJV4pHHBdzNh+0EgfLAv8bq03yHe
	EBAk+14awK8BxDPswlEgSuL7cT1GuG7EWqGcZ7/YA0Wpcw7y5e/P6NLsIsrET4Cccgl
	rrqm6l7YwWGKOuL9enLprnjjfl6h9KXy9wiFEQ3A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f973c48b8-0e63496d-200a-4b02-ae4f-d1a0b6ed335d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e60aeffb2b568e0804dcf5fbaeef3b244b6b1d9102961c9578509d76a250c189
Date: Thu, 17 Mar 2022 09:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647509784
