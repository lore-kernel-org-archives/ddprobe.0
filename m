Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE439320E
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 10:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648290418;
	h=To:Subject:From:Message-Id:Date;
	bh=6R1LRsEKkE+Ws483GN8M3j9cVd+ztvODv2GIH6BZOzs=;
	b=hjvMX8AvAbSf64yied1JXx07LpFefgea+GCokpLT7Kc6RV/42v/RZarEAmmzPUEX
	MWnhl+NoGt9asoHv/X4rrl9VatEoMdxwOjng8bNSNutY9l0/Oqkjz8xPUYyg59XHB7D
	9KwfjJKWxmHkKgEwdp/hU7shtKGZ3Jga9f7g1MNc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648290418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6R1LRsEKkE+Ws483GN8M3j9cVd+ztvODv2GIH6BZOzs=;
	b=IoXfmA0C8WKgVQq4bVuvmFJb6XLpR2aMsiw4/+HXj0mK2cq6jhILePJkgN3df3d6
	0C3jsMy5qXCb3g+hBA5M8VlIjNjDEEHgswLg8VGyDWiLLGTOrT6zs/pqBY9qTuSvJm8
	qifxXecejGsNjk9QIUD427q077hDKiRDckh6aSzg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc5c3ce79-2501d1e1-edfb-400a-a8f6-7c483595d3ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39060c13f1275b46a72176e851d06daf9e572c6865da2578d63951f0ba4aab41
Date: Sat, 26 Mar 2022 10:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648290418
