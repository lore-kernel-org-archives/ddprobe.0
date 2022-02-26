Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 706463D70
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 18:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645899084;
	h=To:Subject:From:Message-Id:Date;
	bh=RkLXfeBbJALT5W8YprFn5BLAwaOf1UADlTCAOiQIRsA=;
	b=CkX1krUiBkl3Cc38tPANUAUCgQ1VfEFgZ5D3CludgA76RaLOqQ6WCUAYEBl+7i+o
	XF6FGhIdB7s5a7Ys5Qyd2txaDODciqipuP+ELyMm3RZfe1rimItoWYQqHODUZ0DLV79
	yR4D8WbUxYHmaxHGeaQfNel6cdkdl25RXfQ1swYA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645899084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RkLXfeBbJALT5W8YprFn5BLAwaOf1UADlTCAOiQIRsA=;
	b=Vzk3wiw82UX25QSmBC3jWo7MjKSLnp+KOvEEHb5yBz2/U5HlQ2HciXI7Ja6mWBTL
	eFjvMszFbvef8XmKHm7qMnNI5jzXqLarJYmU9l3HN7liRVtttAUMrDLYGxpp9AmDbLP
	dFDDQ6hKeuzZKd2AjjII2DEiXC3Vz3WCw6aMB67k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f373af3c7-4f47fc09-f05f-4e30-9318-e4d3d5a72a26-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08bda65ca59a79673a1f263194bb68deccd63ece26ecea30bf41b7d31f530f4c
Date: Sat, 26 Feb 2022 18:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645899084
