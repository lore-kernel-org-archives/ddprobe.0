Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B9D185D
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 10:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645699284;
	h=To:Subject:From:Message-Id:Date;
	bh=F9SV8banKUaufO3mDbPwSNNFnwNUnX66Q9az5U8agCw=;
	b=L8fjoefxbzsV7QhrB+XoDkOJTdUho9pcWm7S8AHnEHBqJ+5aXUbmFcoDjrjCAGoP
	0RnfnIY8JwpFL/kFaKulYmt0linz9HrcopCPdJ3uf+4fWKCIQ7Sh8fxLVozqgRAtjy3
	bGq/MVFfPc2BdWAy3WHAMgG3lf+FTYo3eKvPvIR8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645699284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F9SV8banKUaufO3mDbPwSNNFnwNUnX66Q9az5U8agCw=;
	b=jh1DHnrWcFXbmfJ5n8aOTJtpm62nY/7cfrePHFOol10C4MiVBZhtjXUKOmBJrKrD
	5duf1CsZLX0tQHSiHb8w+CZy00CQfWQnZLP4N+RLfzYzyVfO5O0JbH74iUvK0Rdp0FB
	GaA28jF9Aw5HRV3MOafQrC3JcFY2glHdmiIEGFGQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2b523f16-f3307ef3-8332-44ec-aaa1-f2d6ffa04ef6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a06fee72f0ce2089dc8f401b6f33b809b719a8658db8a05875978a3717243699
Date: Thu, 24 Feb 2022 10:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645699284
