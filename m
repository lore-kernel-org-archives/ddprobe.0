Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 030EE2575
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 19:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658087812;
	h=To:Subject:From:Message-Id:Date;
	bh=m0fQRNjaesVYScIMDfffbjRiaYRHr7HkZUkPVMTCmEY=;
	b=FsBPorOhGpwdX/6MO+PgwSh6o94hGgQ4Ne9FJkkJ00XQG8mpSncbZxnp8BWxzW8L
	cN/Ec35ZPtes+6jHhFtHgi257Qq7tmDLBMgRikXZ+wIITqm0I4vmJ5Y1fCgTA8una3u
	U13O0Qmd6NCAPq9xRawJJvw9+jNO0Kh/Go45+Cug=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658087812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m0fQRNjaesVYScIMDfffbjRiaYRHr7HkZUkPVMTCmEY=;
	b=VqJnocITox5FCUbTXMO3u4548811MPcRhiNNKx/mBD2TMtid0w5RkvrSdOaDp2ER
	E6+NOvOWIUDtPjHeT828MbUjfCtx+TarPTHcZl3zAnUow18hKdc3LvSsRX30bjXo+3D
	jeHfzrrwwvNipH3Zs2EwI/mfZ0fwX7MHoWLXrM2I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820dbc2cca-b657121d-0169-44e0-81ca-e4bd87254627-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cff59633d29d02ad9f99457ffa4caccc7c82039a2db3cc948a83541b31586f39
Date: Sun, 17 Jul 2022 19:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658087812
