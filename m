Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E59C43237
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 19:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651693378;
	h=To:Subject:From:Message-Id:Date;
	bh=McUquvtLZZ2DrqlNZay+HPhnjv+XiX82d9GSiferyNE=;
	b=EDnl0nIurgxXSlkdAwRZeES3bgOFmbHzFy7DFsbmSGfvkhh9XIeXn5a+lAjRvZvo
	r5eJXDk+KcJboih28XFOiy1M+E4Xktpa51GPHbL0yf2xRkqZgHO/T5PxiFd78eFqtb/
	l52BET20VL00xTFpcWq9dLgQ2PzkOLZ/zRstgCws=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651693378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=McUquvtLZZ2DrqlNZay+HPhnjv+XiX82d9GSiferyNE=;
	b=Wmc9z8uPcuikoBzZfrNf96g2ZsMf3duKyZcsxGs3oEmr1lo5mgp5KDVz63ipJ6Ec
	Mu5W9VxtlRrO2JfQmcj7sptPQidaooGV10RxsKnxk8tFKIIEUqeksdcMIPoNn64x/D7
	ooZGcbk8MUKksGpLuXVvHCwFcLnP9qN4wo2RF1g0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809098dade-e7028fed-84ca-41cc-af8c-72adf502a7cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 85691b017df387e44a04bd21636caccaceae613e7c32856e81d4969888df0a58
Date: Wed, 4 May 2022 19:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651693378
