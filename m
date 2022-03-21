Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E4E963E
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 17:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647884784;
	h=To:Subject:From:Message-Id:Date;
	bh=blKUZvIgBaL0uDKo9gmrg0uSjba1RlvC5m2aApN5x8w=;
	b=McTp6nXiXSIGz/KFRdUVOevosXybFHJKTItqtXtVvoiSCOlGao6WRnQt711iwryw
	VaWBBwDqv7qEVuHsRXkaSQJFk4rjNeCgpQCQdJAkYcVncb+2bA2GQRp79MT3fjAiKiP
	aS7T3ixcUDmdfChXARVTIQwTly+WJbbwB7c6kwBM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647884784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=blKUZvIgBaL0uDKo9gmrg0uSjba1RlvC5m2aApN5x8w=;
	b=PJITicyRNCQQaq7ZUqsC1d1yS2mzveigXI7BL/Pghe4ZfE6t4flALT+R5BRDwSa6
	KBy6B5IfVbhZhS5ID6M3ZmD8mXjay0D+9wZ0cPLJgL4QPAdeTxkZOhMW52MDauNdJmT
	Mwv9E6QhoihW3w9ZgJ6PGCmzJjLqr+NWNC/mwI4Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fad965461-734e34ea-5016-499e-8ecc-d2fada060691-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 744ce8cf04f9390ae0264b64afa430d04aa6ccee2b67a476eca079fd54e61d68
Date: Mon, 21 Mar 2022 17:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647884784
