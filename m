Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226637C
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 05:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653368399;
	h=To:Subject:From:Message-Id:Date;
	bh=vnNR9bb2vuYsdBbgjAZty0PhNQRi7jCXKy8aa7HMvGQ=;
	b=Q+u+detSZ+hDDnnYb1bZGRrU6JNaVqVAiY+GH2pb1gzbBxghkkpEA+qSNJeQEV0z
	/3Lxs5VVC8CVlHGCRVWrrCRNKR39rx2Rtw1u6PDoVHHjqZvEXzp5CuJCIK0vp41WlPG
	p1O/PuT8iEiHFQKagTvcqGcqVldQ4mjZmUllMej4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653368399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vnNR9bb2vuYsdBbgjAZty0PhNQRi7jCXKy8aa7HMvGQ=;
	b=FHK78nhUDMkCcbXz7xNP0rdNCeqrNLR/+EC3HR+SO06FMhnFgTs8IocJEGLZDUbB
	tF2Nhrni/YfPqdaX5sO8MP+GTfiiksccXMskv/Bb8H/QpIenq2wcWmrqqEnOJ3hrQl1
	lCOsMbI+lY1HUnAYYT6iA5xyS5xO7mcBwMkU0zuk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f46fa60b-13c73854-4a1e-4405-ad0c-a71529d4f985-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4abd8495b28308794e80b0c3ba4246ec6dd4c15e584f1e9bc9a9511864d7a8f
Date: Tue, 24 May 2022 04:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653368399
