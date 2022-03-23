Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 759B76AB9
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 23:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648078978;
	h=To:Subject:From:Message-Id:Date;
	bh=gjaWBVVBGpdsLo9A35yJMn7fp86gPrb65h5sQ9Hvm0Y=;
	b=MiIP0t9Yq3gIPeKyPAAawCnjlL6DNFCUOfYE8OAIOLJu1GpkNK3aGeJgeJUli9CQ
	rvJA4L/PbgTK+m0ah8ist5xZxt7PUvuqLJlTt4f4BmNyj2fKrzeM9h1SzuTpDfUoTBk
	9fxsUHP1q81ghw2CO6grpyrmUy0SLDhBUjEKJ3BQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648078978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gjaWBVVBGpdsLo9A35yJMn7fp86gPrb65h5sQ9Hvm0Y=;
	b=k1UJXB5s0nj96X4AVMaKHMXsNDq3dJVpNFipD/OvwuqkkUI7A3CFlAZf1kzRjMPA
	Pl44otMsZJNQRbCzVYA9wwbXjrTnhskDa3EsKPomVUqh206/USQ1KK5Y2Qskv+BUSGo
	MzB7E+0h/cny90IIMXuADGU19vsx/LhQX5Me++us=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb9297cdb-a3b8463d-e892-417d-8a0b-8431e5d53aef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d34405040ed514b4e54da8f426c9b88d147d26b587a4e52c878310da39e7dafb
Date: Wed, 23 Mar 2022 23:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648078978
