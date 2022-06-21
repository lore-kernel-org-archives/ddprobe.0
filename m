Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4279CA44
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 07:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655795219;
	h=To:Subject:From:Message-Id:Date;
	bh=lRiaFV5xX0SqEXlDXc1yVeGl02MHM9x8p8e/Z/wxkhg=;
	b=U85tRoiEwVBis+rMOw/6gpCmcwN/23lxTWkopsKIBulZ/hjFaBRQJwfD/Q1inAD0
	pBEqY3oPmFdXva3RAhF6zMp+t3arrslCzTkZCAAwQx+Bq9eQSNsYMy6RNq23ZS9gW5i
	X4tnwDUJru/lLpbgH365CLSOYeHVaUVmxoHNN5Y0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655795219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lRiaFV5xX0SqEXlDXc1yVeGl02MHM9x8p8e/Z/wxkhg=;
	b=QdrxEAaYidKf4U28znv53tcbyqcCeRtP2GJYb4ztZpTZGjhqqJkHDvlM09220SDQ
	MRfULSrRU8V+4nTz02q6hcwF82kr1d/0Z6/xoA3LSvfrjeCbQKQO2e3WSrL6tIBVGOG
	KATyQs/4tyjL3iiy8qFuZ2oz4N7xBu2aKeG8+v5g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818515fb69-6ff40e37-b3fb-40e3-8f8c-ea95e64d9c5f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b337bd86e0d56c9ad260f9e4087632056f731bf3878b52cb2a0c1f0617ab54ae
Date: Tue, 21 Jun 2022 07:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655795219
