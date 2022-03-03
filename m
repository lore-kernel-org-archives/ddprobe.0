Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F75536B
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 19:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646334685;
	h=To:Subject:From:Message-Id:Date;
	bh=G3t32JCkWGyLOXT//5iJOOy7bK8Xd0uVA5Fi++Ma/l4=;
	b=ld1Jn1EhbPQYHb2LWHLY9Jo8M92wrXPdF9UlRcFuPXgL/yEnvomrA6MlwAnRDiHm
	uV8qe53XUUNvz7fb5KJazeTJmnIcQ4udlTWORKST0gxfKVnTRvWqLL9oRYcNqGCnw1d
	w38lKPF0xpNE0c7O3LmiCj1Ko/AVUmtU5piO8+NU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646334685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G3t32JCkWGyLOXT//5iJOOy7bK8Xd0uVA5Fi++Ma/l4=;
	b=FW8krlkIMHCzYQhf90NxkdXigg3+3VTA3alIKdVf54zxtB1auhSyCihAVD7Lf7pi
	igIBM93CN6o7aFnm+kGdToNgXuRjBEWJJMsiAmLrS5WSjplhMgOIYjF24QsqEf7ZJzK
	XEOHPFj2gOsbEBGWi1K1sNxeyzpePqa0bJKe/E50=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5131ae60-10cb35d1-9b11-4720-a7e4-f1a7414a360d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b990f23516e9697fe4ead47b71a802d53248410fc16fe0a69523348f3825c11
Date: Thu, 3 Mar 2022 19:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646334684
