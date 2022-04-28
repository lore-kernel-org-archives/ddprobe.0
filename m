Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D587B
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 00:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651104478;
	h=To:Subject:From:Message-Id:Date;
	bh=mWvdhhaoCnQnTv+qecpn5knOcPXqQEsb96ve570+z5Q=;
	b=IICkYEscTjGKliXRrc3bFsZJVfohIv5fHuaVCDgWBB5a+nNv9rpqDoCpfduqW2eg
	Qxc6bhzMjloZ81qaIcRWuhHesIl2NI7qdSr+UTr4o7XKIK6xtjmBfRJJQMTtiiDdCOo
	t/reiTiAlPVqmoONoMyZXWsRocU14FR3agn283yw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651104478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mWvdhhaoCnQnTv+qecpn5knOcPXqQEsb96ve570+z5Q=;
	b=kKlt3beexICLu1iZ6fFQC4BU0NmnVJVGgkJL41zKBNNs2UjAs7otoU1AwUOKgENr
	1LgzeB4tdbPjR6RkfzKJFXZo60AuvRSAuP9Kna1t0+dBA6nfRsTle66mgoZxjoUb+2S
	JYhj/rPgnOTEtSrSwdb+S8mRz+6EVv8yVEizPc4g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806d7ef44b-395eb290-ce70-4b63-9034-e9f195c7bef1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b458e11f8727ccfef2b91bccd2fa0bbcf777edff45fb1e4ce08a64dd366e4e4d
Date: Thu, 28 Apr 2022 00:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651104478
