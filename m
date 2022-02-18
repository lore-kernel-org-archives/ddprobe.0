Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8451048B7
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 09:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645178185;
	h=To:Subject:From:Message-Id:Date;
	bh=cnlzSBYSeDTqWQznYdLRmEjrZcv5wYgd5PlhAdKumhU=;
	b=FX3YsSRK4kRy/MV40Dx/WvfuU2r62CMp4NrarVf0BdCAts5H4uqkLxCGRoGFW4AX
	ag+LSfKY3WrPOgswzLh7NX3v8W3kFFT+ZfafVkJ0IDiTqBN7x0Fiw7mlpU0SXSTwu5V
	2PFfKymdPK4vhhmWCXcF8TLTP0lALd8AuucpRXl8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645178185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cnlzSBYSeDTqWQznYdLRmEjrZcv5wYgd5PlhAdKumhU=;
	b=BIcQyN6wJLOHA46OBxpwVKMYvzsoRWG0efAqq4QDSFJu+XsQeTDFEvflG7ZxJMdl
	PXj4L8NM2lEU6s+WPIzaUO+W0Js+OBhNQt9FUbnLpzm/RYA9ESN69evcfRQLE8ZfGMD
	/Rn5tyi2pRPqKy0lXbYIZWqPsxo6NM6x5ZLEk5Eg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0c42e47e-feaa4b87-1cab-4509-be31-ab85fe39318d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58eaf43d3966ad27c77eb60b4052e17dd67e50548d03b53e2dafa2e0ea1fce1a
Date: Fri, 18 Feb 2022 09:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645178184
