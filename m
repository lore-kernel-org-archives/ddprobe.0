Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3F8C7E
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 23:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646953887;
	h=To:Subject:From:Message-Id:Date;
	bh=U6A14sN/qZvNmTuZO9onmrTaNZXtQHCrfeP7gDUasrs=;
	b=RCTntjPtAtdxV8zs0J4i7V3KDcvahHVj8GoHH3gLqXPPA8oFZN7ZLc5Hyrox7FPs
	dVRUmOySj2sA5O+6wo874RqBK9r4c7shIq95Pw8xQLv9hGNs8htPYkWUlXQynRA44FW
	wwtz5nauE4hLpetuvUEttkWvmkFeYkeVXpVQ0QEc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646953887;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U6A14sN/qZvNmTuZO9onmrTaNZXtQHCrfeP7gDUasrs=;
	b=ESfUATlOoWVz0PuYpbVRu67ikAJLHkkwv15UYF4QP9mejCEi0RgpcgGor/BauYdz
	p2pVNqMUybwZgypZN2/BfJ/GVd7upq/Y+Al936Qvq2lfNFa3zRiw/+Rmxwscko/e2F5
	udV9QButWqrTtXGdYRSIq+c/wk187hnhVef/p288=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7619f462-1ae4a06c-c1a9-40b6-941c-bb59ea334016-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 852fe30b1adcb98bfe1234365fd3cd702bcd898f1c2843307df33ff0666b1f84
Date: Thu, 10 Mar 2022 23:11:26 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646953884
