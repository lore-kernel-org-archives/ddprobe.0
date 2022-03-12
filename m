Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3AD37A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 03:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647057385;
	h=To:Subject:From:Message-Id:Date;
	bh=LmAazthSWJJfbyrMLQqXFDVwNXiC45p5kKODE6Fpwc4=;
	b=jK5Ukihw8JLF7rt8Cko0a/lhIxutZEZZdM+dqjfU+GpzOU1yDtzgDVrUyy5owseU
	J8YQlV0WL5XJGt3rlrx1B96F9i9YQ5pXI2AQ+tNtHfk4ky+++Dr3h2aSrxSW12CnURy
	7jYato7yomBPzuZPJnyuzRkoEl88+6ymkN5EqN60=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647057385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LmAazthSWJJfbyrMLQqXFDVwNXiC45p5kKODE6Fpwc4=;
	b=J6IroAua0gccwY5FGWKXmVTAorz1NjxR9wECzVeVDiDh/sEFmVgn18UzfVTcxRta
	QyuIb2zqN2gcKxpwQLDLyxMCnPjaAtoYs30LwxuDfB7LdxKxNAmfCD3vZj9QprivAki
	cKCIz2tkQH1pXSAT9kUDAPR2x0rMJmAC4k0cVsZk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7c45352b-5c951ae1-7bd1-4f3e-9f1b-ffd8c653034a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 96930f3d73545ee653b49a8d222763a9a6348fbafb12c65651a276713da3ac2a
Date: Sat, 12 Mar 2022 03:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647057384
