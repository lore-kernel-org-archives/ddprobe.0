Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 086DAA2D
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 17:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648746238;
	h=To:Subject:From:Message-Id:Date;
	bh=T9TrBVqdbLcPcKtBBG9UT9vOZK/aSWj9qy8bimNO/zM=;
	b=ZA3Uf7UypLSDpmljj+Xh7IPitUdsHvfIDmhIkY2vPezr69safDNf+XnrB+FYxIAo
	I8o1Gw+/smwFy2qViLJZZVIGSdz/0uzH87+wYJFmrfBsCtodzyVPF2fKM1d4/afOSfC
	WcTeSCjlhyhlnQbyrjp8EOE9ZMPgkJFpJH9IiF6U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648746238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T9TrBVqdbLcPcKtBBG9UT9vOZK/aSWj9qy8bimNO/zM=;
	b=YmpS06kxQKfrdY4s7N7YrrW4azFwoWip6eaxsOMFuOHFfr3jY3rg6Dy2RKnLKYNs
	Vfpz/mWhmOGwWM6EfCOvYEUI2GKY+7qPt3tv3nXg+J0hhuoNFkQFI50C2R07RI9vfWH
	Sq64nrADRdc5QWX0Iplgh5mDon7diygTHDPXGYmg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe0ef1147-c3a4d214-5c53-408e-a631-d87048ac4dfd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bda6f7c848dc61e9369e8d460bf20ade88bd11fed06b0c10d3f838881403d6eb
Date: Thu, 31 Mar 2022 17:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648746238
