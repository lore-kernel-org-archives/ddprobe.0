Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8121310EE
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 16:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646585484;
	h=To:Subject:From:Message-Id:Date;
	bh=ah7JsoSNEg24N1+5HZSEvNZ8HYnw77gD6HSiGHBJFtA=;
	b=SJRSQK5f6/DDXPlGvr0mo6Qc9BkVuJtGJ0QLugu0wYBDQ845qpZJji49lsge+Zgf
	rYTAjjnYG8rw9duho7fEcWEOZfbbronkeKUMkfutUOqrcKgOzeVwamrZDpDsow+Z6rv
	ietFUPumtrxvhV6TI6HxYUZJQIQ7Nkgke7sPq2ns=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646585484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ah7JsoSNEg24N1+5HZSEvNZ8HYnw77gD6HSiGHBJFtA=;
	b=JXm4ghNSiP6YdGyhlX5nTR2y5AjjUTfuIFbU/KO0aSFOxOEwnkzrZklUxSTIqgjP
	JdIovzq+BdGHLyEFSVKRTv2oNiNzV6xAAQzthYD2wVh5WjGpUYhN/lyvv0vmCMy4Lwr
	AYZ2/znkJJqseXkkoB/kgc0m0MbKNkhzXJjd2tZA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f602495e3-9333fd6d-b8a4-4285-81e1-aea8ab6f9c5c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c805ad5646fb04bdea82d2a0f1f936b0db053d305c48e3a2102e062c80175f6d
Date: Sun, 6 Mar 2022 16:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646585484
