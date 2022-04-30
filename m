Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C93A1853
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 10:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651314778;
	h=To:Subject:From:Message-Id:Date;
	bh=oJwLHl140m6ikzH1W71WDyckLjnlZwfOD/eM4rfq55w=;
	b=DqbenIiuAiHKHh+XksjCfRZtqM6DFjdewzvX5zenWYIlsnMXohsiof9b2D96dRjB
	7MmNxeD3pEF7O5c1JsgGyzEBiq2CdFiXNtd6VoiDUfW0eQQ7Ptuyu2v+d1rsYRdcDyE
	8jEMHnXu/lKKOeY5wlK0HujrIfxY9gh7hqhGDzHg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651314778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oJwLHl140m6ikzH1W71WDyckLjnlZwfOD/eM4rfq55w=;
	b=RzOLmc0eTVlcQaUsz5CkDJS/dYQW1hF7QTry9K76g5k1YZAbcN5/lDx3QeIexaHH
	CqkpghE34GWtm+Y6a9Mxrzg2xMI6KrnBkRp3quLtiPm3dq0ebc844kZahIPxlzSXPHK
	PefQl5Bj1uT84AdHqoiLp54eFxIWWMrL/qZr/FGI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807a07e07e-fee2272b-2db3-486e-a9c0-ad74b5b9d67b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 43e5d05af242d0bff9a7a64d02944a9976fa6daeda204d953fdef95403f046b5
Date: Sat, 30 Apr 2022 10:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651314778
