Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3717E
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 23:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648425298;
	h=To:Subject:From:Message-Id:Date;
	bh=u/2IFvuBOg03OWWJSVeOMfhxODmI8leMGdlp/vyHjXc=;
	b=auLKZPWxKZue9yJNVTnASkDKLy7EG9AUIZUVsj2QDlySFQ42zXP1XiVVbu5e+qAK
	/uc4ze3+1wwxRWDor9DXdOyv1S43ujbxup24peOgoIWuWpPqOmXxlPr4rpJIk8CDh+r
	v7Lq0WZgdZlVFUxZ7mNT6wN/7cZHrMubo2bh+Vg4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648425298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u/2IFvuBOg03OWWJSVeOMfhxODmI8leMGdlp/vyHjXc=;
	b=jzmMQd4SzdIAUphS1kzOK+zHUKUcuuijOTFTj9ok5ljVH/bzh7flacIbR4qHxmld
	G26VEN7HJO/6Jp4xD7UzoG8STk4odVSZT8QfC+sp6g0Xga2Lb0rGZOBMs3s28+NOGaA
	I3ComMsI+dO3V7zjMcqPNzcWLDCzV7UdStCL1hq0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcdcde964-f7ad9390-126e-4ac8-9b11-b2d57be1c0f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b2830bb540bb4d99bb097b83165a065576bcfc2878ffd785594bd07d9c73c77
Date: Sun, 27 Mar 2022 23:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648425298
