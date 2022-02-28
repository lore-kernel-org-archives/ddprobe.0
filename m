Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241847A
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 17:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646068285;
	h=To:Subject:From:Message-Id:Date;
	bh=Wv/hU+FiAnG01A6yz9yTHamKpWe3CxRIghcI8hUCSTE=;
	b=Z7Nfrv10FC9vK/7Wg+yF3IWjSfu55WTCRKGCl6tFkdq01SmQLVf5lK+KXrCusx8N
	kA6KCcxx+NOXxPqGdeNC059bxbh6VSdzQLTnRKReFvxGa8J3+msZpvrZD6eqqoyced4
	VjA42Y0yVHz/xOVaH8O61O8pIzufgQ5lgPDntYRY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646068285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wv/hU+FiAnG01A6yz9yTHamKpWe3CxRIghcI8hUCSTE=;
	b=LOa0GLt7VXpEEX9cI30z6HgODjSX5ThxYPqxK2/YAEqALwvjyKcvCEem+/BZ8EHu
	q9skUmXPgaQoa5PiLdPyZf0CHp9gzqIbD18E7WtsTJfevsUatVfcngX+efviWx6BaGT
	UE5c/H+b9jp0g70juZ/me3nymsxsrzEkT3xVFCtI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4150bd5a-bcd3b9cf-323b-488d-b0e7-2d459072dde7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 85f0cbcb8180db8ae390764d88c220317fb5ce9f8ac00a610a5da3ac9d40209a
Date: Mon, 28 Feb 2022 17:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646068284
