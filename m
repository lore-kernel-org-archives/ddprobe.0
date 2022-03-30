Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DCC1366
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 08:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648629718;
	h=To:Subject:From:Message-Id:Date;
	bh=PV23tjsiRWPJIrXLiwNWakVrXGY5Rk6asArrZfF4Yg0=;
	b=M7CVp6EYHtxHXR07Xpfudf8yJDN7gU4JajTbtY6wrOspRmV9yS2NW5O5tj8Jj/1i
	VJ4e1EHhg5X4gTE7+pEbiNccZrv0JKnMp9AwIeRDDaJWLmxkMRCcfctT9B9NceiOdmv
	ogGJ8HtgzUKtLJPEdoR3Wh2ueZqo9tIggAZBLS+g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648629718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PV23tjsiRWPJIrXLiwNWakVrXGY5Rk6asArrZfF4Yg0=;
	b=hgergYmkx6i9gCJReJxroIYqNVHxQ+Sk9ywfT7aHC/egDPSxl2ynjyJTxKl98+Cl
	UycikSL2i47iwzIfDuROD4omsCNUP/+K2h1pbS0RlK3b/r6MT0v3+DGK1gnCpXB2GsK
	75fHNHmRKZswLdNXfnM0cm6Vcpt9Hpc0+2QuW/WI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd9fd1ceb-aca5e4d2-4221-46fb-a91f-c7127dc02d52-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 368a1c0f8d1eb8d3f692dfc409cb4632d080bb9719c0a38dea4c41ad51a076d4
Date: Wed, 30 Mar 2022 08:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648629718
