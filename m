Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB69228E2
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 10:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645266985;
	h=To:Subject:From:Message-Id:Date;
	bh=ln9kMMhmf0dP4J3RTJDGRlCZJyzhfno3s7rgGvBZmvo=;
	b=CRk9fZv+c8orCiw0P2kGHdoQpHTflkakDs66PG2+BlMwC+lDgCq9tuCHtXa1d+Xg
	uVbJqvqHE11CTkXymuKijDh4z77vS6aA0i/D84BgvA/LroIcaEVK73oSu4EoWyT0Z/4
	UFtmgEFj78QPPsHOM2lVhrl9/BFgG57jfXMZUXDk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645266985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ln9kMMhmf0dP4J3RTJDGRlCZJyzhfno3s7rgGvBZmvo=;
	b=Mmnt919YzOrXBdRhCWSTizmJWIZXR9He06w/D/7KxZ6DoX2OFOHGCIJ8p8D5eiAZ
	YH/7tsmkiNf+ePh+Az1ve4d9l2DMznnCZXvktQwlz98ZqJcEvMU8ywoBdCiHt9xl5I4
	Lbiyz/xt50T4E+DTRQR+XEn7RFZooNZX/9nSafNQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f118ddf6b-3e3b7809-885c-46db-a675-78b1f40a60f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc4ebbf19562343bfd2232e688a339e367e5083639ba2a8aaec45699d05143c4
Date: Sat, 19 Feb 2022 10:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645266984
